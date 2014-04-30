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
 */
@property(strong) NSString * categoryField;

/**
 Bottom margin of the chart.
 */
@property(strong) NSNumber * marginBottom;

/**
 Left margin of the chart.
 */
@property(strong) NSNumber * marginLeft;

/**
 Right margin of the chart.
 */
@property(strong) NSNumber * marginRight;

/**
 Top margin of the chart.
 */
@property(strong) NSNumber * marginTop;

/**
 Radius of a radar.
 */
@property(strong) NSString * radius;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end