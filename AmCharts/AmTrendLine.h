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
 @version 3.4.8
 */
@property(strong) NSNumber * dashLength;

/**
 String, equal to category value to which trend line should be drawn. It should be used if chart doesn't parse dates.
 @version 3.4.8
 */
@property(strong) NSString * finalCategory;

/**
 Date to which trend line should be drawn. It can be date string (using the same date format as chart.dataDateFormat) or date object.
 @version 3.4.8
 */
@property(strong) NSDate * finalDate;

/**
 Value at which trend line should end.
 @version 3.4.8
 */
@property(strong) NSNumber * finalValue;

/**
 Used by XY chart only. X value at which trend line should end.
 @version 3.4.8
 */
@property(strong) NSNumber * finalXValue;

/**
 Unique id of a Trend line. You don't need to set it, unless you want to.
 @version 3.4.8
 */
@property(strong) NSString * uid;

/**
 String, equal to category value from which trend line should start. It should be used if chart doesn't parse dates.
 @version 3.4.8
 */
@property(strong) NSString * initialCategory;

/**
 Date from which trend line should start. It can be date string (using the same date format as chart.dataDateFormat) or date object.
 @version 3.4.8
 */
@property(strong) NSDate * initialDate;

/**
 Value from which trend line should start.
 @version 3.4.8
 */
@property(strong) NSNumber * initialValue;

/**
 Used by XY chart only. X value from which trend line should start.
 @version 3.4.8
 */
@property(strong) NSNumber * initialXValue;

/**
 Used by Stock chart. If this property is set to true, this trend line won't be removed when clicked on eraser tool.
 @version 3.4.8
 */
@property(assign) BOOL isProtected;

/**
 Line opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * lineAlpha;

/**
 Line color.
 @version 3.4.8
 */
@property(strong) NSString * lineColor;

/**
 Line thickness.
 @version 3.4.8
 */
@property(strong) NSNumber * lineThickness;

/**
 Value axis of the trend line. Will use first value axis of the chart if not set any. You can use a reference to the value axis object or id of value axis.
 @version 3.4.8
 */
@property(strong) AmValueAxis * valueAxis;

/**
 Used by XY chart only. X axis of trend line. Will use first X axis of the chart if not set any. You can use a reference to the value axis object or id of value axis.
 @version 3.4.8
 */
@property(strong) AmValueAxis * valueAxisX;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end