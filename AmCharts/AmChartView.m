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
@property (assign) BOOL hasSetup;
@end

@implementation AmChartView

- (id)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}
- (id)initWithFrame:(NSRect)frameRect
{
    self = [super initWithFrame:frameRect];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    if (self.hasSetup) {
        return;
    }
    
    // set the delegates
    [self setFrameLoadDelegate:self];
    
    // grab the JSContext
    _context = [JSContext contextWithJSGlobalContextRef:self.mainFrame.globalContext];
    if (!_context) {
        NSLog(@"failed to get webviews javascriptcontext");
        return;
    }
    
    _context[@"amChartView"] = self;
    
    if (!self.templateFilepath) {
      self.templateFilepath = [[NSBundle bundleWithIdentifier:@"com.chimpstudios.AmCharts"] pathForResource:@"chart" ofType:@"html" inDirectory:@"AmChartsWeb"];
    }
    
    // load the chart.html page in preparation for future charting needs
    NSString *localFilepath = self.templateFilepath;
    NSURL *localURL = [NSURL fileURLWithPath:localFilepath];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:localURL];
    [self.mainFrame loadRequest:request];
    self.hasSetup = YES;
}
- (void)awakeFromNib
{
    [self setup];
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
- (void)setTemplateFilepath:(NSString *)templateFilepath
{
    if (_templateFilepath != templateFilepath) {
        _templateFilepath = templateFilepath;
        self.hasSetup = NO;
        [self setup];
    }
}
- (void)setBodyBackgroundColor:(NSString *)bodyBackgroundColor
{
    if (bodyBackgroundColor && bodyBackgroundColor.length > 0) {
        [self stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.body.style.backgroundColor = '%@';", bodyBackgroundColor]];
    } else {
        // default to white
        [self stringByEvaluatingJavaScriptFromString:@"document.body.style.backgroundColor = 'white';"];
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
        _isReady = YES;
    }
}

#pragma mark -
#pragma mark - Layout / Resizing
NSInteger layoutCallCount;
- (void)setNeedsLayout:(BOOL)flag
{
    [super setNeedsLayout:flag];
    layoutCallCount ++;
    if (layoutCallCount > 2) {
        [self validateChart];
    } else {
        [NSObject cancelPreviousPerformRequestsWithTarget:self
                                                 selector:@selector(validateChart)
                                                   object:nil];
        [self performSelector:@selector(validateChart)
                   withObject:nil
                   afterDelay:0.1];
    }
}

- (void)validateChart
{
   [self stringByEvaluatingJavaScriptFromString:@"chart.validateNow();"];
    layoutCallCount = 0;
}
@end
