// 
//  AmChartScrollbar.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@class AmCategoryAxis;
@class AmGraph;

@interface AmChartScrollbar : NSObject

/**
 Specifies whether number of gridCount is specified automatically, acoarding to the axis size.
 @version 3.4.8
 */
@property(assign) BOOL autoGridCount;

/**
 Background opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * backgroundAlpha;

/**
 Background color of the scrollbar.
 @version 3.4.8
 */
@property(strong) NSString * backgroundColor;

/**
 Read-only. Category axis of the scrollbar.
 @version 3.4.8
 */
@property(strong) CategoryAxis * categoryAxis;

/**
 Text color.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Height of resize grip image. Note, you should also update the image in amcharts/images folder if you don't want it to be distorted because of resizing.
 @version 3.4.8
 */
@property(strong) NSNumber * dragIconHeight;

/**
 Width of resize grip image. Note, you should also update the image in amcharts/images folder if you don't want it to be distorted because of resizing.
 @version 3.4.8
 */
@property(strong) NSNumber * dragIconWidth;

/**
 Specifies which graph will be displayed in the scrollbar. Only Serial chart's scrollbar can display a graph.
 @version 3.4.8
 */
@property(strong) AmGraph * graph;

/**
 Graph fill opacity. Value range is 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * graphFillAlpha;

/**
 Graph fill color.
 @version 3.4.8
 */
@property(strong) NSString * graphFillColor;

/**
 Graph line opacity. Value range is 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * graphLineAlpha;

/**
 Graph line color.
 @version 3.4.8
 */
@property(strong) NSString * graphLineColor;

/**
 by default the graph type is the same as the original graph's type, however in case of candlestick or ohlc you might want to show line graph in the scrollbar. Possible values are: line, column, step, smoothedLine, candlestick, ohlc
 @version 3.4.8
 */
@property(strong) NSString * graphType;

/**
 Grid opacity. Value range is 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * gridAlpha;

/**
 Grid color.
 @version 3.4.8
 */
@property(strong) NSString * gridColor;

/**
 The number of grid lines.
 @version 3.4.8
 */
@property(strong) NSNumber * gridCount;

/**
 Specifies whether resize grips are hidden when mouse is away from the scrollbar.
 @version 3.4.8
 */
@property(assign) BOOL hideResizeGrips;

/**
 Maximum value of ValueAxis of ChartScrollbar. Calculated automatically, of not set.
 @version 3.4.8
 */
@property(strong) NSNumber * maximum;

/**
 Minimum value of ValueAxis of ChartScrollbar. Calculated automatically, of not set.
 @version 3.4.8
 */
@property(strong) NSNumber * minimum;

/**
 Distance from plot area to scrollbar, in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * offset;

/**
 Specifies whether scrollbar has a resize feature.
 @version 3.4.8
 */
@property(assign) BOOL resizeEnabled;

/**
 Height (width, if chart is rotated) of a scrollbar.
 @version 3.4.8
 */
@property(strong) NSNumber * scrollbarHeight;

/**
 Duration of scrolling, when the user clicks on scrollbar's background, in seconds. Note, updateOnReleaseOnly should be set to false in order animation to happen.
 @version 3.4.8
 */
@property(strong) NSNumber * scrollDuration;

/**
 Selected backround opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * selectedBackgroundAlpha;

/**
 Selected background color.
 @version 3.4.8
 */
@property(strong) NSString * selectedBackgroundColor;

/**
 Selected graph's fill opacity. Value range is 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * selectedGraphFillAlpha;

/**
 Selected graph's fill color.
 @version 3.4.8
 */
@property(strong) NSString * selectedGraphFillColor;

/**
 Selected graph's line opacity. Value range is 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * selectedGraphLineAlpha;

/**
 Selected graph's line color.
 @version 3.4.8
 */
@property(strong) NSString * selectedGraphLineColor;

/**
 Specifies if the chart should be updated while dragging/resizing the scrollbar or only at the moment when user releases mouse button.
 @version 3.4.8
 */
@property(assign) BOOL updateOnReleaseOnly;

@end