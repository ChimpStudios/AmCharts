// 
//  AmTrendLine.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@class AmValueAxis;

@interface AmTrendLine : NSObject

/**
 Dash length.
 */
@property(strong) NSNumber * dashLength;

/**
 String, equal to category value to which trend line should be drawn. It should be used if chart doesn't parse dates.
 */
@property(strong) NSString * finalCategory;

/**
 Date to which trend line should be drawn. It can be date string (using the same date format as chart.dataDateFormat) or date object.
 */
@property(strong) NSString * finalDate;

/**
 Value at which trend line should end.
 */
@property(strong) NSNumber * finalValue;

/**
 Used by XY chart only. X value at which trend line should end.
 */
@property(strong) NSNumber * finalXValue;

/**
 Unique id of a Trend line. You don't need to set it, unless you want to.
 */
@property(strong) NSString * uid;

/**
 String, equal to category value from which trend line should start. It should be used if chart doesn't parse dates.
 */
@property(strong) NSString * initialCategory;

/**
 Date from which trend line should start. It can be date string (using the same date format as chart.dataDateFormat) or date object.
 */
@property(strong) NSString * initialDate;

/**
 Value from which trend line should start.
 */
@property(strong) NSNumber * initialValue;

/**
 Used by XY chart only. X value from which trend line should start.
 */
@property(strong) NSNumber * initialXValue;

/**
 Used by Stock chart. If this property is set to true, this trend line won't be removed when clicked on eraser tool.
 */
@property(strong) NSNumber * isProtected;

/**
 Line opacity.
 */
@property(strong) NSNumber * lineAlpha;

/**
 Line color.
 */
@property(strong) NSString * lineColor;

/**
 Line thickness.
 */
@property(strong) NSNumber * lineThickness;

/**
 Value axis of the trend line. Will use first value axis of the chart if not set any. You can use a reference to the value axis object or id of value axis.
 */
@property(strong) NSString * valueAxis;

/**
 Used by XY chart only. X axis of trend line. Will use first X axis of the chart if not set any. You can use a reference to the value axis object or id of value axis.
 */
@property(strong) NSString * valueAxisX;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end
