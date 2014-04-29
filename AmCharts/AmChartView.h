//
//  AmChartView.h
//  AmChartsLibrary
//
//  Created by Andrew on 4/29/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
#import "AmCharts.h"

@interface AmChartView : WebView

/**
 chart must inherit from AmChart or AmStockChart
 */
@property (strong, nonatomic) id chart;

@end
