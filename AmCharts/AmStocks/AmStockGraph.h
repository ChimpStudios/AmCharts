// 
//  AmStockGraph.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmGraph.h"

@interface AmStockGraph : AmGraph

/**
 Specifies whether this graph will be compared if some data set is selected for comparing.
 @version 3.4.8
 */
@property(assign) BOOL comparable;

/**
 Opacity of bullet border of comparing graph.
 @version 3.4.8
 */
@property(strong) NSNumber * comparedGraphBulletBorderAlpha;

/**
 Color of bullet border of comparing graph.
 @version 3.4.8
 */
@property(strong) NSString * comparedGraphBulletBorderColor;

/**
 Thickness of bullet border of comparing graph.
 @version 3.4.8
 */
@property(strong) NSNumber * comparedGraphBulletBorderThickness;

/**
 Specifies a field to be used to generate comparing graph. Note, this field is not the one used in your dataProvider, but toField from FieldMapping object.
 @version 3.4.8
 */
@property(strong) NSString * compareField;

/**
 If you set it to true, when data sets are compared, the graphs will use first value as a base value instead of using the first value of selected period.
 @version 3.4.8
 */
@property(assign) BOOL compareFromStart;

/**
 Balloon color of comparing graph.
 @version 3.4.8
 */
@property(strong) NSString * compareGraphBalloonColor;

/**
 If you set some function, the graph will call it and pass GraphDataItem and AmGraph object to it. This function should return a string which will be displayed in a balloon. This will be used for graphs from compared data sets only. Use balloonFunction for main data set's graphs.
 @version 3.4.8
 */
@property(assign) id compareGraphBalloonFunction;

/**
 Balloon text of comparing graph.
 @version 3.4.8
 */
@property(strong) NSString * compareGraphBalloonText;

/**
 Bullet of comparing graph. Possible values are: round, square, diamond, triangleUp, triangleDown, triangleLeft, triangleRight, bubble
 @version 3.4.8
 */
@property(strong) NSString * compareGraphBullet;

/**
 Bullet size of comparing graph.
 @version 3.4.8
 */
@property(strong) NSNumber * compareGraphBulletSize;

/**
 Corner radius of comparing graph (if type is "column").
 @version 3.4.8
 */
@property(strong) NSNumber * compareGraphCornerRadiusTop;

/**
 Dash length of compare graph.
 @version 3.4.8
 */
@property(strong) NSNumber * compareGraphDashLength;

/**
 Fill alpha of comparing graph.
 @version 3.4.8
 */
@property(strong) NSNumber * compareGraphFillAlphas;

/**
 Fill color of comparing graph.
 @version 3.4.8
 */
@property(strong) NSString * compareGraphFillColors;

/**
 Opacity of comparing graph line.
 @version 3.4.8
 */
@property(strong) NSNumber * compareGraphLineAlpha;

/**
 Thickness of compare graph.
 @version 3.4.8
 */
@property(strong) NSNumber * compareGraphLineThickness;

/**
 Type of comparing graph. Possible values are: "line", "column", "step", "smoothedLine."
 @version 3.4.8
 */
@property(strong) NSString * compareGraphType;

/**
 Specifies if compare graph is visible in legend.
 @version 3.4.8
 */
@property(assign) BOOL compareGraphVisibleInLegend;

/**
 When data is grouped to periods, the graph must know which period value should be used. Possible values are: "Open", "Low", "High", "Close", "Average" and "Sum".
 @version 3.4.8
 */
@property(strong) NSString * periodValue;

/**
 Specifies if events of compared graphs should be shown.
 @version 3.4.8
 */
@property(assign) BOOL showEventsOnComparedGraphs;

/**
 Specifies whether data set color should be used as this graph's lineColor.
 @version 3.4.8
 */
@property(assign) BOOL useDataSetColors;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end