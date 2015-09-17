//
//  AmChartView.m
//  AmChartsLibrary
//
//  Created by Andrew on 4/29/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
//

#import "AmChartView.h"
#import "AmCharts.h"
#import "AmCategories.h"

@interface AmChartView()
@property (assign) BOOL hasSetup;
@end

@implementation AmChartView

- (void)dealloc
{
    //NSLog(@"AmChartView dealloc");
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
 //   _context = [JSContext contextWithJSGlobalContextRef:self.mainFrame.globalContext];
    _context = [self valueForKeyPath:@"mainFrame.javaScriptContext"];
    
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
     //   NSDate *startDate = [NSDate date];
        NSString *scrpt = [NSString stringWithFormat:@"generateChartWithJSONData(%@);", [_chart javascriptRepresentation]];
        [_context evaluateScript:scrpt];
    //    NSDate *endDate = [NSDate date];
     //   NSTimeInterval executionTime = [endDate timeIntervalSinceDate:startDate];
     //   NSLog(@"drawing chart took = %.2f seconds", executionTime);
    } else if (_chart) {
#ifdef DEBUG
  //      NSLog(@"AmCharts is not ready yet!");
#endif
        [self performSelector:@selector(drawChart) withObject:nil afterDelay:1.0];
    } else if (_isReady) {
        NSLog(@"No chart has been assigned");
    }
}

// attempts to load only the most recent data for quick drawing
// then adds the rest of the data later
- (void)drawChartAsynchronouslyWithInitialViewport:(NSDate *)start to:(NSDate *)end {
    if (_chart && _isReady) {
        
        // if no End date is specified in the parameters use the current time.
        if (!end) {
            end = [NSDate date];
        }
        
        NSMutableArray *allChartData;
        AmStockChart *stockChart  = nil;
        AmChart *chart            = nil;
        if ([_chart respondsToSelector:@selector(dataProvider)]) {
            allChartData = [NSMutableArray arrayWithArray:[_chart performSelector:@selector(dataProvider)]];
            chart = _chart;
        } else if ([_chart respondsToSelector:@selector(dataSets)]) {
            stockChart = _chart;
            AmDataSet *dataSet = (stockChart.dataSets.count > 0) ? stockChart.dataSets[0] : nil;
            if (dataSet) {
                allChartData = dataSet.dataProvider;
            } else {
                [self drawChart];
                return;
            }
        }
        
        NSInteger truncatedDataPointsCount;
        NSMutableArray *subsetOfData;
        
        // if no start paremeter provided, limit it to 1000 data points or until it reaches the end //END DETECTION NOT IMPLEMENTED
        if (!start) {
            truncatedDataPointsCount  = (allChartData.count > 1000) ? 1000 : allChartData.count;
            NSInteger startLocation   = allChartData.count-1-truncatedDataPointsCount;
            if (startLocation < 0 || startLocation+truncatedDataPointsCount > allChartData.count-1) {
                startLocation = 0;
            }
            subsetOfData              = [[allChartData subarrayWithRange:NSMakeRange(startLocation, truncatedDataPointsCount)] mutableCopy];
        } else {
            // find the start date and the end date
            
            NSDateFormatter *df = [[NSDateFormatter alloc] init];
            [df setDateFormat:@"YYYY/MM/dd HH:mm"];
            
            NSInteger startIdx  = NSNotFound;
            NSInteger endIdx    = NSNotFound;
            
          //  if (end && [end timeIntervalSinceNow] > 1) {
                endIdx = allChartData.count-1;
         //   }
            
            for (NSInteger idx=0; idx<allChartData.count; idx++) {
                NSDictionary *dict = allChartData[idx];

                NSString *dateStr = dict[@"date"];
                NSDate *date = [df dateFromString:dateStr];
                
                if (startIdx == NSNotFound) {
                    if ([date laterDate:start] == date) {
                        startIdx = idx;
                    }
                }
                
             //   if (endIdx == NSNotFound) {
             //       if ([date laterDate:end] == date) {
              //          endIdx = idx;
             //       }
             ///   }
                
                if (startIdx != NSNotFound && endIdx != NSNotFound) {
                    break;
                }
            }
            
            if ((startIdx >= 0 && startIdx < allChartData.count) &&
                endIdx > startIdx && endIdx < allChartData.count) {
                subsetOfData    = [[allChartData subarrayWithRange:NSMakeRange(startIdx, endIdx-startIdx)] mutableCopy];
            }
        }
        

        id tmpChart;
        if (chart) {
            chart.dataProvider = subsetOfData;
            tmpChart = chart;
        } else if (stockChart) {
            ((AmDataSet *)stockChart.dataSets[0]).dataProvider = subsetOfData;
            tmpChart = stockChart;
        }
        
      //  NSDate *timing_startDate = [NSDate date];
      //  NSLog(@"\n\n\n\n%@\n\n\n\n", [tmpChart javascriptRepresentation]);
        
        self.isLoadingIncrementally = YES;
        NSString *scrpt = [NSString stringWithFormat:@"generateChartWithJSONData(%@);", [tmpChart javascriptRepresentation]];
        [_context evaluateScript:scrpt];
      //  NSDate *timing_enddate = [NSDate date];
      //  NSTimeInterval executionTime = [timing_enddate timeIntervalSinceDate:timing_startDate];
      //  NSLog(@"drawing chart took = %.2f seconds", executionTime);
        
        
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if (stockChart) {
                //  AmStockChart *sChart = _chart;
                NSString *fullDataSet = [allChartData JSONString];
                NSString *dataScript = [NSString stringWithFormat:@"chart.dataSets[0].dataProvider = %@;", fullDataSet];
                [_context evaluateScript:dataScript];
               // [_context evaluateScript:@"chart.validateData();"];
            }
        });
    } else if (_chart) {
#ifdef DEBUG
        //      NSLog(@"AmCharts is not ready yet!");
#endif
        [self performSelector:@selector(drawChart) withObject:nil afterDelay:1.0];
    } else if (_isReady) {
        NSLog(@"No chart has been assigned");
    }
}

- (void)finishIncrementalCharting {
    [_context evaluateScript:@"chart.validateData();"];
    self.isLoadingIncrementally = NO;
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
