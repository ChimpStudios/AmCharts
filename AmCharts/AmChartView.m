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
@property (assign) BOOL hasSetup;
@end

@implementation AmChartView

- (void)dealloc
{
    NSLog(@"AmChartView dealloc");
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    self.frameLoadDelegate = nil;
    self.UIDelegate = nil;
}

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
    self.hasSetup = YES;
    
    
    // set the delegates
    [self setFrameLoadDelegate:self];
    [self setUIDelegate:self];
    
    // grab the JSContext
    _context = [JSContext contextWithJSGlobalContextRef:self.mainFrame.globalContext];
    if (!_context) {
        NSLog(@"failed to get webviews javascriptcontext");
        return;
    }
    
    __unsafe_unretained typeof(self) weakSelf = self;
    _context[@"amChartView"] = weakSelf;
    _context[@"jsDelegate"] = _jsDelegate;
    
    if (!self.templateFilepath) {
      self.templateFilepath = [[NSBundle bundleWithIdentifier:@"com.chimpstudios.AmCharts"] pathForResource:@"chart" ofType:@"html" inDirectory:@"AmChartsWeb"];
    }
    
    // load the chart.html page in preparation for future charting needs
    NSString *localFilepath = self.templateFilepath;
    NSURL *localURL = [NSURL fileURLWithPath:localFilepath];
  //  NSURLRequest *request = [[NSURLRequest alloc] initWithURL:localURL];
   // [self.mainFrame loadRequest:request];
    
    [self.mainFrame loadHTMLString:[NSString stringWithContentsOfFile:self.templateFilepath encoding:NSUTF8StringEncoding error:nil] baseURL:localURL];
    
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
  //      NSLog(@"AmCharts is not ready yet!");
#endif
        [self performSelector:@selector(drawChart) withObject:nil afterDelay:1.0];
    } else if (_isReady) {
        NSLog(@"No chart has been assigned");
    }
}

- (void)drawChartWithJSON:(NSString *)json
{
    if (_isReady) {
        NSString *scrpt = [NSString stringWithFormat:@"generateChartWithJSONData(%@);", json];
        [_context evaluateScript:scrpt];
    } else if (json) {
#ifdef DEBUG
        //      NSLog(@"AmCharts is not ready yet!");
#endif
        [self performSelector:@selector(drawChartWithJSON:) withObject:json afterDelay:1.0];
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
- (void)setJsDelegate:(id)jsDelegate
{
    if (_jsDelegate != jsDelegate) {
        _jsDelegate = jsDelegate;
        _context[@"jsDelegate"] = _jsDelegate;
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
    if (!_isReady) {
        if (_bodyBackgroundColor != bodyBackgroundColor) {
            _bodyBackgroundColor = bodyBackgroundColor;
            
            if (bodyBackgroundColor && bodyBackgroundColor.length > 0) {
                [self stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.body.style.backgroundColor = '%@';", bodyBackgroundColor]];
            } else {
                // default to white
                [self stringByEvaluatingJavaScriptFromString:@"document.body.style.backgroundColor = 'white';"];
            }
        }
        return;
    }
    
    if (_bodyBackgroundColor != bodyBackgroundColor) {
        _bodyBackgroundColor = bodyBackgroundColor;
    }
    
    if (bodyBackgroundColor && bodyBackgroundColor.length > 0) {
        [self stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.body.style.backgroundColor = '%@';", bodyBackgroundColor]];
    } else {
        // default to white
        [self stringByEvaluatingJavaScriptFromString:@"document.body.style.backgroundColor = 'white';"];
    }
}

#pragma mark -
#pragma mark - Getters
- (NSInteger)tag
{
    return _mTag;
}

#pragma mark -
#pragma mark - AmChartViewExport
-(void)amChartsAreReady
{
    if (!_isReady) {
        [self willChangeValueForKey:@"isReady"];
        _isReady = YES;
        [self setBodyBackgroundColor:_bodyBackgroundColor];
        [self didChangeValueForKey:@"isReady"];
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
#pragma mark - FrameLoadDelegate
- (void)webView:(WebView *)webView didCreateJavaScriptContext:(JSContext *)context forFrame:(WebFrame *)frame
{
#if DEBUG
    
    if ([frame isEqualTo:[webView mainFrame]]) {
        context[@"window"][@"onerror"] = ^(JSValue *message, JSValue *file, JSValue *line) {
            NSLog(@"%@", message);
        };
    }
     
#endif
}

#pragma mark -
#pragma mark - UIDelegate
- (NSArray *)webView:(WebView *)sender contextMenuItemsForElement:(NSDictionary *)element
    defaultMenuItems:(NSArray *)defaultMenuItems
{
    // disable right-click context menu
    return nil;
}

#pragma mark -
#pragma mark - Layout / Resizing
/**
 Starting in v3.13, chart views now use a responsive resizing plugin.
 */

NSInteger layoutCallCount;
- (void)setNeedsLayout:(BOOL)flag
{
    [super setNeedsLayout:flag];
    
    if (!self.chart || !_isReady) {
        return;
    }
    
    if ([[_chart class] isSubclassOfClass:[AmChart class]] ||
        [[_chart class] isSubclassOfClass:[AmStockChart class]]) {
        AmChart *chart = (AmChart *)_chart;
        if ([chart respondsToSelector:@selector(responsive)]) {
            if (chart.responsive && chart.responsive.enabled) {
                return; // dynamic resizing plugin is enabled.
            }
        }
    }
    
    layoutCallCount ++;
    if (layoutCallCount > 4) {
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
    [self stringByEvaluatingJavaScriptFromString:@"chart.validateSize();"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self stringByEvaluatingJavaScriptFromString:@"if (chart.periodSelector) {chart.periodSelector.setDefaultPeriod();}"];
    });
    layoutCallCount = 0;
}

@end
