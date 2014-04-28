// 
//  AmRadarChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmCoordinateChart.h"


@interface AmRadarChart : AmCoordinateChart

/**
 Field in your data provider containing categories.
 @version 3.4.8
 */
@property(strong) NSString * categoryField;

/**
 Bottom margin of the chart.
 @version 3.4.8
 */
@property(strong) NSNumber * marginBottom;

/**
 Left margin of the chart.
 @version 3.4.8
 */
@property(strong) NSNumber * marginLeft;

/**
 Right margin of the chart.
 @version 3.4.8
 */
@property(strong) NSNumber * marginRight;

/**
 Top margin of the chart.
 @version 3.4.8
 */
@property(strong) NSNumber * marginTop;

/**
 Radius of a radar.
 @version 3.4.8
 */
@property(strong) NSString * radius;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end