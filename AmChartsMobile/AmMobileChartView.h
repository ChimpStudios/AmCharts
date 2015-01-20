//
//  AmChartView.h
//  AmChartsLibrary
//
//  Created by Andrew on 5/5/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol AmChartViewMobileExport <JSExport>
-(void)amChartsAreReady;
@end

@interface AmMobileChartView : UIView < UIWebViewDelegate, AmChartViewMobileExport>

/**
 The UIWebView that handles drawing the chart
 */
@property (strong) UIWebView *chartView;

/**
 chart must inherit from AmChart or AmStockChart
 */
@property (strong, nonatomic) id chart;

/**
 filepath for HTML webview contents.  Set this is you want to use a custom HTML file for chart rendering.
 */
@property (strong, nonatomic) NSString *templateFilepath;

/**
 Boolean value that signals whether AmCharts.ready() has fired yet
 */
@property (assign) BOOL isReady;

/**
 Renders chart by sending JSON chart configuration string to javascript AmCharts.makeChart()
 */
- (void)drawChart;


@end
