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
 */
@property(strong) NSNumber * autoGridCount;

/**
 Axis opacity.
 */
@property(strong) NSNumber * axisAlpha;

/**
 Axis color.
 */
@property(strong) NSString * axisColor;

/**
 Height of category axes. Set it to 0 if you set inside property to true.
 */
@property(strong) NSNumber * axisHeight;

/**
 Thickness of the axis.
 */
@property(strong) NSNumber * axisThickness;

/**
 Text color.
 */
@property(strong) NSString * color;

/**
 Length of a dash.
 */
@property(strong) NSNumber * dashLength;

/**
 Date formats of different periods. Possible period values: fff - milliseconds, ss - seconds, mm - minutes, hh - hours, DD - days, MM - months, WW - weeks, YYYY - years. Check this page for date formatting strings.
 */
@property(strong) NSMutableArray * dateFormats;

/**
 If you want data points to be placed at equal intervals (omiting dates with no data), set equalSpacing to true.
 */
@property(strong) NSNumber * equalSpacing;

/**
 Fill opacity. Every second space between grid lines can be filled with fillColor.
 */
@property(strong) NSNumber * fillAlpha;

/**
 Fill color. Every second space between grid lines can be filled with color. Set fillAlpha to a value greater than 0 to see the fills.
 */
@property(strong) NSString * fillColor;

/**
 Text size.
 */
@property(strong) NSNumber * fontSize;

/**
 Opacity of grid lines.
 */
@property(strong) NSNumber * gridAlpha;

/**
 Color of grid lines.
 */
@property(strong) NSString * gridColor;

/**
 Approximate number of grid lines. You should set autoGridCount to false in order this property not to be ignored.
 */
@property(strong) NSNumber * gridCount;

/**
 Thickness of grid lines.
 */
@property(strong) NSNumber * gridThickness;

/**
 Periods to which data will be gruoped in case there are more data items in the selected period than specified in maxSeries property.
 */
@property(strong) NSMutableArray * groupToPeriods;

/**
 Specifies whether values should be placed inside or outside of plot area.
 */
@property(strong) NSNumber * inside;

/**
 Rotation angle of a label.
 */
@property(strong) NSNumber * labelRotation;

/**
 Specifies whether axis displays category axis' labels and value axis' values.
 */
@property(strong) NSNumber * labelsEnabled;

/**
 Specifies if period period should be marked with a different date format.
 */
@property(strong) NSNumber * markPeriodChange;

/**
 Maximum series shown at a time. In case there are more data points in the selection than maxSeries, the chart will group data to longer periods, for example - you have 250 days in the selection, and maxSeries is 150 - the chart will group data to weeks.
 */
@property(strong) NSNumber * maxSeries;

/**
 Specifies the shortest period of your data. fff - millisecond, ss - second, mm - minute, hh - hour, DD - day, MM - month, YYYY - year.<br>
<br>
It's also possible to supply a number for increments, i.e. "15mm" which will instruct the chart that your data is supplied in 15 minute increments.
 */
@property(strong) NSString * minPeriod;

/**
 "top" or "bottom".
 */
@property(strong) NSString * position;

/**
 Specifies whether the graph should start on axis or not. In case you display columns, it is recommended to set this to false. startOnAxis can be set to true only if equalSpacing is set to true.
 */
@property(strong) NSNumber * startOnAxis;

/**
 Tick length.
 */
@property(strong) NSNumber * tickLength;

/**
 Works only when parseDates is set to true and equalSpacing is false. If you set it to true, at the position where bigger period changes, category axis will display date strings of bot small and big period, in two rows.
 */
@property(strong) NSNumber * twoLineMode;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end
