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
 */
@property(assign) NSNumber * comparable;

/**
 Specifies a field to be used to generate comparing graph. Note, this field is not the one used in your dataProvider, but toField from FieldMapping object.
 */
@property(strong) NSString * compareField;

/**
 If you set it to true, when data sets are compared, the graphs will use first value as a base value instead of using the first value of selected period.
 */
@property(assign) NSNumber * compareFromStart;

/**
 Balloon color of comparing graph.
 */
@property(strong) NSString * compareGraphBalloonColor;

/**
 If you set some function, the graph will call it and pass GraphDataItem and AmGraph object to it. This function should return a string which will be displayed in a balloon. This will be used for graphs from compared data sets only. Use balloonFunction for main data set's graphs.
 */
@property(strong) NSString * compareGraphBalloonFunction;

/**
 Balloon text of comparing graph.
 */
@property(strong) NSString * compareGraphBalloonText;

/**
 Bullet of comparing graph. Possible values are: round, square, diamond, triangleUp, triangleDown, triangleLeft, triangleRight, bubble
 */
@property(strong) NSString * compareGraphBullet;

/**
 Opacity of bullet border of comparing graph.
 */
@property(strong) NSNumber * compareGraphBulletBorderAlpha;

/**
 Color of bullet border of comparing graph.
 */
@property(strong) NSString * compareGraphBulletBorderColor;

/**
 Thickness of bullet border of comparing graph.
 */
@property(strong) NSNumber * compareGraphBulletBorderThickness;

/**
 Color of compared graphs' bullets.
 */
@property(strong) NSString * compareGraphBulletColor;

/**
 Bullet size of comparing graph.
 */
@property(strong) NSNumber * compareGraphBulletSize;

/**
 Corner radius of comparing graph (if type is "column").
 */
@property(strong) NSNumber * compareGraphCornerRadiusTop;

/**
 Dash length of compare graph.
 */
@property(strong) NSNumber * compareGraphDashLength;

/**
 Fill alpha of comparing graph.
 */
@property(strong) NSNumber * compareGraphFillAlphas;

/**
 Fill color of comparing graph.
 */
@property(strong) NSString * compareGraphFillColors;

/**
 Opacity of comparing graph line.
 */
@property(strong) NSNumber * compareGraphLineAlpha;

/**
 Color of compare graph (by default data set color is used)
 */
@property(strong) NSString * compareGraphLineColor;

/**
 Thickness of compare graph.
 */
@property(strong) NSNumber * compareGraphLineThickness;

/**
 Type of comparing graph. Possible values are: "line", "column", "step", "smoothedLine."
 */
@property(strong) NSString * compareGraphType;

/**
 Specifies if compare graph is visible in legend.
 */
@property(assign) NSNumber * compareGraphVisibleInLegend;

/**
 When data is grouped to periods, the graph must know which period value should be used. Possible values are: "Open", "Low", "High", "Close", "Average" and "Sum".
 */
@property(strong) NSString * periodValue;

/**
 Specifies if events of compared graphs should be shown.
 */
@property(assign) NSNumber * showEventsOnComparedGraphs;

/**
 Specifies whether data set color should be used as this graph's lineColor.
 */
@property(assign) NSNumber * useDataSetColors;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end