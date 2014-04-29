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
 Set false if you don't need scrollbar.
 @version 3.4.8
 */
@property(assign) BOOL enabled;

/**
 Font size.
 @version 3.4.8
 */
@property(strong) NSNumber * fontSize;

/**
 Specifies which graph will be displayed in the scrollbar.
 @version 3.4.8
 */
@property(strong) NSString * graph;

/**
 Graph fill opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * graphFillAlpha;

/**
 Graph fill color.
 @version 3.4.8
 */
@property(strong) NSString * graphFillColor;

/**
 Graph line opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * graphLineAlpha;

/**
 Graph line color.
 @version 3.4.8
 */
@property(strong) NSString * graphLineColor;

/**
 Type of chart scrollbar's graph. By default the graph type is the same as the original graph's type, however in case of candlestick or ohlc you might want to show line graph in the scrollbar. Possible values are: line, column, step, smoothedLine, candlestick, ohlc.
 @version 3.4.8
 */
@property(strong) NSString * graphType;

/**
 Grid opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * gridAlpha;

/**
 Grid color.
 @version 3.4.8
 */
@property(strong) NSString * gridColor;

/**
 Grid count. You should set autoGridCount to false in order this property to work.
 @version 3.4.8
 */
@property(strong) NSNumber * gridCount;

/**
 Height of scrollbar, in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * height;

/**
 Specifies whether resize grips are hidden when mouse is away from the scrollbar.
 @version 3.4.8
 */
@property(assign) BOOL hideResizeGrips;

/**
 Specifies if category axis of scrollbar should mark period change with a different date format.
 @version 3.4.8
 */
@property(assign) BOOL markPeriodChange;

/**
 Position of a scrollbar. Possible values are "top" and "bottom".
 @version 3.4.8
 */
@property(strong) NSString * position;

/**
 Duration of scrolling, when the user clicks on scrollbar's background, in seconds. Note, updateOnReleaseOnly should be set to false in order animation to happen.
 @version 3.4.8
 */
@property(strong) NSNumber * scrollDuration;

/**
 Selected background opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * selectedBackgroundAlpha;

/**
 Selected background color.
 @version 3.4.8
 */
@property(strong) NSString * selectedBackgroundColor;

/**
 Selected graph'sfill opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * selectedGraphFillAlpha;

/**
 Selected graph'sfill color.
 @version 3.4.8
 */
@property(strong) NSString * selectedGraphFillColor;

/**
 Selected graph'sline opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * selectedGraphLineAlpha;

/**
 Selected graph's line color.
 @version 3.4.8
 */
@property(strong) NSString * selectedGraphLineColor;

/**
 Specifies if the chart should be updated while dragging/resizing the scrollbar or only at the moment when user releases mouse button. Usefull when working with large data sets.
 @version 3.4.8
 */
@property(assign) BOOL updateOnReleaseOnly;

/**
 This is very important feature for those, who work with large data sets. You can tell ChartScrollbar what period it should use for it's graph and save a lot of time for rendering of this graph. For example, if your minPeriod is "DD" (days), set usePeriod = "WW" (weeks) and you will have 7 times less data points in scrollbar's graph. Note, the period you specify here should be set in CategoryAxesSettings.groupToPeriods.
 @version 3.4.8
 */
@property(strong) NSString * usePeriod;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end