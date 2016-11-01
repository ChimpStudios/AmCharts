// 
//  AmCoordinateChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmChart.h"


@interface AmCoordinateChart : AmChart

/**
 Read-only. Array, holding processed chart's data.
 */
@property(strong) NSMutableArray * chartData;

/**
 Specifies the colors of the graphs if the lineColor of a graph is not set. It there are more graphs then colors in this array, the chart picks random color.
 */
@property(strong) NSMutableArray * colors;

/**
 The array of graphs belonging to this chart.
 */
@property(strong) NSMutableArray * graphs;

/**
 Specifies if grid should be drawn above the graphs or below. Will not work properly with 3D charts.
 */
@property(strong) NSNumber * gridAboveGraphs;

/**
 Instead of adding guides to the axes, you can push all of them to this array. In case guide has category or date defined, it will automatically will be assigned to the category axis. Otherwise to first value axis, unless you specify a different valueAxis for the guide.
 */
@property(strong) NSMutableArray * guides;

/**
 Specifies whether the animation should be sequenced or all objects should appear at once.
 */
@property(strong) NSNumber * sequencedAnimation;

/**
 The initial opacity of the column/line. If you set startDuration to a value higher than 0, the columns/lines will fade in from startAlpha. Value range is 0 - 1.
 */
@property(strong) NSNumber * startAlpha;

/**
 Duration of the animation, in seconds.
 */
@property(strong) NSNumber * startDuration;

/**
 Animation effect. Possible values are: easeOutSine, easeInSine, elastic, bounce
 */
@property(strong) NSString * startEffect;

/**
 Target of url.
 */
@property(strong) NSString * urlTarget;

/**
 The array of value axes. Chart creates one value axis automatically, so if you need only one value axis, you don't need to create it.
 */
@property(strong) NSMutableArray * valueAxes;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end
