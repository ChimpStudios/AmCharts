//
//  AmChartView.h
//  AmChartsLibrary
//
//  Created by Andrew on 4/29/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import <WebKit/WebKit.h>

// Check if JSExport functionality is available
#if !JSC_OBJC_API_ENABLED
@protocol JSExport
@end
#endif

@protocol AmChartViewExport <JSExport>
-(void)amChartsAreReady;
@end


@interface AmChartView : WebView <AmChartViewExport>

/**
 delegate that conforms to JSExport protocol
 Use in combination with templateFilepath to create your own html chart page with custom javascript listeners and callbacks
 */
@property (weak, nonatomic) id<JSExport> jsDelegate;

@property (strong) JSContext *context;

/**
 chart must inherit from AmChart or AmStockChart
 */
@property (strong, nonatomic) id chart;

/**
 Boolean value that signals whether AmCharts.ready() has fired yet
 */
@property (assign) BOOL isReady;

/**
 filepath for HTML webview contents.  Set this is you want to use a custom HTML file for chart rendering.
 */
@property (strong, nonatomic) NSString *templateFilepath;

/**
 Set the CSS background color of the body element.  'black', '#ffffff', 'rba(0,255,0)'
 */
@property (strong, nonatomic) NSString *bodyBackgroundColor;

/**
 Renders chart by sending JSON chart configuration string to javascript AmCharts.makeChart()
 */
- (void)drawChart;

@end
