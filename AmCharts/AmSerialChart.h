// 
//  AmSerialChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmRectangularChart.h"

@class AmCategoryAxis;

@interface AmSerialChart : AmRectangularChart

/**
 Date format of the graph balloon (if chart parses dates and you don't use chartCursor).
 */
@property(strong) NSString * balloonDateFormat;

/**
 Read-only. Chart creates category axis itself. If you want to change some properties, you should get this axis from the chart and set properties to this object.
 */
@property(strong) AmCategoryAxis * categoryAxis;

/**
 Category field name tells the chart the name of the field in your dataProvider object which will be used for category axis values.
 */
@property(strong) NSString * categoryField;

/**
 The gap in pixels between two columns of the same category.
 */
@property(strong) NSNumber * columnSpacing;

/**
 Space between 3D stacked columns.
 */
@property(strong) NSNumber * columnSpacing3D;

/**
 Relative width of columns. Value range is 0 - 1.
 */
@property(strong) NSNumber * columnWidth;

/**
 Even if your chart parses dates, you can pass them as strings in your data – all you need to do is to set data date format and the chart will parse dates to date objects. Check this page for available formats.
 */
@property(strong) NSString * dataDateFormat;

/**
 Read-only. If category axis parses dates endDate indicates date to which the chart is currently displayed.
 */
@property(strong) NSDate * endDate;

/**
 Read-only. Category index to which the chart is currently displayed.
 */
@property(strong) NSNumber * endIndex;

/**
 Maximum number of series allowed to select.
 */
@property(strong) NSNumber * maxSelectedSeries;

/**
 The longest time span allowed to select (in milliseconds) for example, 259200000 will limit selection to 3 days.
 */
@property(strong) NSNumber * maxSelectedTime;

/**
 The shortest time span allowed to select (in milliseconds) for example, 1000 will limit selection to 1 second.
 */
@property(strong) NSNumber * minSelectedTime;

/**
 Specifies if scrolling of a chart with mouse wheel is enabled.
 */
@property(assign) BOOL mouseWheelScrollEnabled;

/**
 If you set this to true, the chart will be rotated by 90 degrees (the columns will become bars).
 */
@property(assign) BOOL rotate;

/**
 Read-only. If category axis parses dates startDate indicates date from which the chart is currently displayed.
 */
@property(strong) NSDate * startDate;

/**
 Read-only. Category index from which the chart is currently displayed.
 */
@property(strong) NSNumber * startIndex;

/**
 Specifies if chart should zoom-out when data is updated.
 */
@property(assign) BOOL zoomOutOnDataUpdate;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end