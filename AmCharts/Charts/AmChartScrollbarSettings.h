// 
//  AmChartScrollbarSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@class AmGraph;

@interface AmChartScrollbarSettings : NSObject

/**
 Specifies whether number of gridCount is specified automatically, according to the axis size.
 */
@property(assign) NSNumber * autoGridCount;

/**
 Background opacity.
 */
@property(strong) NSNumber * backgroundAlpha;

/**
 Background color of the scrollbar.
 */
@property(strong) NSString * backgroundColor;

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
 Set false if you don't need scrollbar.
 */
@property(assign) NSNumber * enabled;

/**
 Font size.
 */
@property(strong) NSNumber * fontSize;

/**
 Specifies which graph will be displayed in the scrollbar.
 */
@property(strong) NSString * graph;

/**
 Graph fill opacity.
 */
@property(strong) NSNumber * graphFillAlpha;

/**
 Graph fill color.
 */
@property(strong) NSString * graphFillColor;

/**
 Graph line opacity.
 */
@property(strong) NSNumber * graphLineAlpha;

/**
 Graph line color.
 */
@property(strong) NSString * graphLineColor;

/**
 Type of chart scrollbar's graph. By default the graph type is the same as the original graph's type, however in case of candlestick or ohlc you might want to show line graph in the scrollbar. Possible values are: line, column, step, smoothedLine, candlestick, ohlc.
 */
@property(strong) NSString * graphType;

/**
 Grid opacity.
 */
@property(strong) NSNumber * gridAlpha;

/**
 Grid color.
 */
@property(strong) NSString * gridColor;

/**
 Grid count. You should set autoGridCount to false in order this property to work.
 */
@property(strong) NSNumber * gridCount;

/**
 Height of scrollbar, in pixels.
 */
@property(strong) NSNumber * height;

/**
 Specifies whether resize grips are hidden when mouse is away from the scrollbar.
 */
@property(assign) NSNumber * hideResizeGrips;

/**
 Specifies if category axis of scrollbar should mark period change with a different date format.
 */
@property(assign) NSNumber * markPeriodChange;

/**
 Position of a scrollbar. Possible values are "top" and "bottom".
 */
@property(strong) NSString * position;

/**
 Duration of scrolling, when the user clicks on scrollbar's background, in seconds. Note, updateOnReleaseOnly should be set to false in order animation to happen.
 */
@property(strong) NSNumber * scrollDuration;

/**
 Selected background opacity.
 */
@property(strong) NSNumber * selectedBackgroundAlpha;

/**
 Selected background color.
 */
@property(strong) NSString * selectedBackgroundColor;

/**
 Selected graph'sfill opacity.
 */
@property(strong) NSNumber * selectedGraphFillAlpha;

/**
 Selected graph'sfill color.
 */
@property(strong) NSString * selectedGraphFillColor;

/**
 Selected graph'sline opacity.
 */
@property(strong) NSNumber * selectedGraphLineAlpha;

/**
 Selected graph's line color.
 */
@property(strong) NSString * selectedGraphLineColor;

/**
 Specifies if the chart should be updated while dragging/resizing the scrollbar or only at the moment when user releases mouse button. Usefull when working with large data sets.
 */
@property(assign) NSNumber * updateOnReleaseOnly;

/**
 This is very important feature for those, who work with large data sets. You can tell ChartScrollbar what period it should use for it's graph and save a lot of time for rendering of this graph. For example, if your minPeriod is "DD" (days), set usePeriod = "WW" (weeks) and you will have 7 times less data points in scrollbar's graph. Note, the period you specify here should be set in CategoryAxesSettings.groupToPeriods.
 */
@property(strong) NSString * usePeriod;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end