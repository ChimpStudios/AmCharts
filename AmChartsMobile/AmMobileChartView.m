//
//  AmChartView.m
//  AmChartsLibrary
//
//  Created by Andrew on 5/5/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
//

#import "AmMobileChartView.h"
#import "AmCharts.h"

@interface AmMobileChartView()
@property (strong) JSContext *context;
@end

@implementation AmMobileChartView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.chartView = [[UIWebView alloc] initWithFrame:frame];
        [self addSubview:self.chartView];
        self.chartView.delegate = self;
        
        NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"AmChartResources" withExtension:@"bundle"]];
        NSString *localFilepath = [bundle pathForResource:@"chart" ofType:@"html" inDirectory:@"AmChartsWeb"];
        NSURL *localURL = [NSURL fileURLWithPath:localFilepath];
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:localURL];
        [self.chartView loadRequest:request];
    }
    return self;
}


- (void)drawChart
{
    if (_chart && _isReady) {
        NSString *scrpt = [NSString stringWithFormat:@"generateChartWithJSONData(%@);", [_chart javascriptRepresentation]];
        [self.chartView stringByEvaluatingJavaScriptFromString:scrpt];
    } else if (_chart) {
#ifdef DEBUG
        NSLog(@"AmCharts is not ready yet!");
        [self performSelector:@selector(drawChart) withObject:nil afterDelay:1.0];
#endif
    } else if (_isReady) {
#ifdef DEBUG
        NSLog(@"No chart has been assigned");
#endif
    }
}

#pragma mark -
#pragma mark - Setters
- (void)setChart:(id)chart
{
    if (![_chart isEqual:chart]) {
        
        // make sure this new object is of type AmChart or AmStockChart
        if ([[chart class] isSubclassOfClass:[AmChart class]] ||
            [[chart class] isSubclassOfClass:[AmStockChart class]]) {
            _chart = chart;
        } else {
#ifdef DEBUG
            NSLog(@"chart must inherit from AmChart or AmStockChart");
#endif
        }
    }
}

#pragma mark -
#pragma mark - AmChartViewExport
-(void)amChartsAreReady
{
    if (!_isReady) {
        self.isReady = YES;
        NSLog(@"AmCharts is ready!");
    }
}

#pragma mark -
#pragma mark - UIWebViewDelegate
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    self.context = [webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"]; // Undocumented access to UIWebView's JSContext
    self.context[@"ios"] = self;
}
-(void)webViewDidFinishLoad:(UIWebView *)view{
    self.isReady = YES;
    
    self.context = [view valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"]; // Undocumented access to UIWebView's JSContext
    self.context[@"ios"] = self;
}

#pragma mark -
#pragma mark - Layout / Resizing
/**
 calls through to AmCharts chart.validateNow();
 */
- (void)validateChart
{
    [self.chartView stringByEvaluatingJavaScriptFromString:@"chart.validateNow();"];
}

@end
