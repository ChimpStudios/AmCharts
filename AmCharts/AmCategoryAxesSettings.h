// 
//  AmCategoryAxesSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmCategoryAxesSettings : NSObject

/**
 Specifies whether number of gridCount is specified automatically, according to the axis size.
 @version 3.4.8
 */
@property(assign) BOOL autoGridCount;

/**
 Axis opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * axisAlpha;

/**
 Axis color.
 @version 3.4.8
 */
@property(strong) NSString * axisColor;

/**
 Height of category axes. Set it to 0 if you set inside property to true.
 @version 3.4.8
 */
@property(strong) NSNumber * axisHeight;

/**
 Thickness of the axis.
 @version 3.4.8
 */
@property(strong) NSNumber * axisThickness;

/**
 Text color.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Length of a dash.
 @version 3.4.8
 */
@property(strong) NSNumber * dashLength;

/**
 Date formats of different periods. Possible period values: fff - milliseconds, ss - seconds, mm - minutes, hh - hours, DD - days, MM - months, WW - weeks, YYYY - years. Check this page for date formatting strings.
 @version 3.4.8
 */
@property(strong) NSMutableArray * dateFormats;

/**
 If you want data points to be placed at equal intervals (omiting dates with no data), set equalSpacing to true.
 @version 3.4.8
 */
@property(assign) BOOL equalSpacing;

/**
 Fill opacity. Every second space between grid lines can be filled with fillColor.
 @version 3.4.8
 */
@property(strong) NSNumber * fillAlpha;

/**
 Fill color. Every second space between grid lines can be filled with color. Set fillAlpha to a value greater than 0 to see the fills.
 @version 3.4.8
 */
@property(strong) NSString * fillColor;

/**
 Text size.
 @version 3.4.8
 */
@property(strong) NSNumber * fontSize;

/**
 Opacity of grid lines.
 @version 3.4.8
 */
@property(strong) NSNumber * gridAlpha;

/**
 Color of grid lines.
 @version 3.4.8
 */
@property(strong) NSString * gridColor;

/**
 Approximate number of grid lines. You should set autoGridCount to false in order this property not to be ignored.
 @version 3.4.8
 */
@property(strong) NSNumber * gridCount;

/**
 Thickness of grid lines.
 @version 3.4.8
 */
@property(strong) NSNumber * gridThickness;

/**
 Periods to which data will be gruoped in case there are more data items in the selected period than specified in maxSeries property.
 @version 3.4.8
 */
@property(strong) NSMutableArray * groupToPeriods;

/**
 Specifies whether values should be placed inside or outside of plot area.
 @version 3.4.8
 */
@property(assign) BOOL inside;

/**
 Rotation angle of a label.
 @version 3.4.8
 */
@property(strong) NSNumber * labelRotation;

/**
 Specifies whether axis displays category axis' labels and value axis' values.
 @version 3.4.8
 */
@property(assign) BOOL labelsEnabled;

/**
 Specifies if period period should be marked with a different date format.
 @version 3.4.8
 */
@property(assign) BOOL markPeriodChange;

/**
 Maximum series shown at a time. In case there are more data points in the selection than maxSeries, the chart will group data to longer periods, for example - you have 250 days in the selection, and maxSeries is 150 - the chart will group data to weeks.
 @version 3.4.8
 */
@property(strong) NSNumber * maxSeries;

/**
 Specifies the shortest period of your data. fff - millisecond, ss - second, mm - minute, hh - hour, DD - day, MM - month, YYYY - year.<br>
<br>
It's also possible to supply a number for increments, i.e. "15mm" which will instruct the chart that your data is supplied in 15 minute increments.
 @version 3.4.8
 */
@property(strong) NSString * minPeriod;

/**
 "top" or "bottom".
 @version 3.4.8
 */
@property(strong) NSString * position;

/**
 Specifies whether the graph should start on axis or not. In case you display columns, it is recommended to set this to false. startOnAxis can be set to true only if equalSpacing is set to true.
 @version 3.4.8
 */
@property(assign) BOOL startOnAxis;

/**
 Tick length.
 @version 3.4.8
 */
@property(strong) NSNumber * tickLength;

/**
 Works only when parseDates is set to true and equalSpacing is false. If you set it to true, at the position where bigger period changes, category axis will display date strings of bot small and big period, in two rows.
 @version 3.4.8
 */
@property(assign) BOOL twoLineMode;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end