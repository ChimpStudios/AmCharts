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
 */
@property(assign) BOOL autoGridCount;

/**
 Background opacity.
 */
@property(strong) NSNumber * backgroundAlpha;

/**
 Background color of the scrollbar.
 */
@property(strong) NSString * backgroundColor;

/**
 Read-only. Category axis of the scrollbar.
 */
@property(strong) AmCategoryAxis * categoryAxis;

/**
 Text color.
 */
@property(strong) NSString * color;

/**
 Height of resize grip image. Note, you should also update the image in amcharts/images folder if you don't want it to be distorted because of resizing.
 */
@property(strong) NSNumber * dragIconHeight;

/**
 Width of resize grip image. Note, you should also update the image in amcharts/images folder if you don't want it to be distorted because of resizing.
 */
@property(strong) NSNumber * dragIconWidth;

/**
 Specifies if scrollbar is enabled. You can hide/show scrollbar using this property without actually removing it.
 */
@property(assign) BOOL enabled;

/**
 Specifies which graph will be displayed in the scrollbar. Only Serial chart's scrollbar can display a graph.
 */
@property(strong) AmGraph * graph;

/**
 Graph fill opacity. Value range is 0 - 1.
 */
@property(strong) NSNumber * graphFillAlpha;

/**
 Graph fill color.
 */
@property(strong) NSString * graphFillColor;

/**
 Graph line opacity. Value range is 0 - 1.
 */
@property(strong) NSNumber * graphLineAlpha;

/**
 Graph line color.
 */
@property(strong) NSString * graphLineColor;

/**
 by default the graph type is the same as the original graph's type, however in case of candlestick or ohlc you might want to show line graph in the scrollbar. Possible values are: line, column, step, smoothedLine, candlestick, ohlc
 */
@property(strong) NSString * graphType;

/**
 Grid opacity. Value range is 0 - 1.
 */
@property(strong) NSNumber * gridAlpha;

/**
 Grid color.
 */
@property(strong) NSString * gridColor;

/**
 The number of grid lines.
 */
@property(strong) NSNumber * gridCount;

/**
 Specifies whether resize grips are hidden when mouse is away from the scrollbar.
 */
@property(assign) BOOL hideResizeGrips;

/**
 Maximum value of ValueAxis of ChartScrollbar. Calculated automatically, of not set.
 */
@property(strong) NSNumber * maximum;

/**
 Minimum value of ValueAxis of ChartScrollbar. Calculated automatically, of not set.
 */
@property(strong) NSNumber * minimum;

/**
 Distance from plot area to scrollbar, in pixels.
 */
@property(strong) NSNumber * offset;

/**
 Specifies whether scrollbar has a resize feature.
 */
@property(assign) BOOL resizeEnabled;

/**
 Height (width, if chart is rotated) of a scrollbar.
 */
@property(strong) NSNumber * scrollbarHeight;

/**
 Duration of scrolling, when the user clicks on scrollbar's background, in seconds. Note, updateOnReleaseOnly should be set to false in order animation to happen.
 */
@property(strong) NSNumber * scrollDuration;

/**
 Selected backround opacity.
 */
@property(strong) NSNumber * selectedBackgroundAlpha;

/**
 Selected background color.
 */
@property(strong) NSString * selectedBackgroundColor;

/**
 Selected graph's fill opacity. Value range is 0 - 1.
 */
@property(strong) NSNumber * selectedGraphFillAlpha;

/**
 Selected graph's fill color.
 */
@property(strong) NSString * selectedGraphFillColor;

/**
 Selected graph's line opacity. Value range is 0 - 1.
 */
@property(strong) NSNumber * selectedGraphLineAlpha;

/**
 Selected graph's line color.
 */
@property(strong) NSString * selectedGraphLineColor;

/**
 Specifies if the chart should be updated while dragging/resizing the scrollbar or only at the moment when user releases mouse button.
 */
@property(assign) BOOL updateOnReleaseOnly;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end