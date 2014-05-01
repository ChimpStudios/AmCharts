//
//  AmChartView.m
//  AmChartsLibrary
//
//  Created by Andrew on 4/29/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
//

#import "AmChartView.h"
#import "AmCharts.h"

@interface AmChartView()
@property (strong) JSContext *context;
@end

@implementation AmChartView

- (void)awakeFromNib
{
    // set the delegates
    [self setFrameLoadDelegate:self];
    
    // grab the JSContext
    _context = [JSContext contextWithJSGlobalContextRef:self.mainFrame.globalContext];
    if (!_context) {
        NSLog(@"failed to get webviews javascriptcontext");
        return;
    }
    
    _context[@"amChartView"] = self;
    
    // load the chart.html page in preparation for future charting needs
    NSString *localFilepath = [[NSBundle bundleWithIdentifier:@"com.chimpstudios.AmCharts"] pathForResource:@"chart" ofType:@"html" inDirectory:@"AmChartsWeb"];
    NSURL *localURL = [NSURL fileURLWithPath:localFilepath];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:localURL];
    [self.mainFrame loadRequest:request];
}

- (void)drawChart
{
    if (_chart && _isReady) {
        NSString *scrpt = [NSString stringWithFormat:@"generateChartWithJSONData(%@);", [_chart javascriptRepresentation]];
        [_context evaluateScript:scrpt];
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
#pragma mark - ResourceLoadDelegate
- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame
{
    if ([frame isEqual:sender.mainFrame]) {
        //_isReady = YES;
    }
}

@end
