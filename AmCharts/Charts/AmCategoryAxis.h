// 
//  AmCategoryAxis.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmAxisBase.h"

@interface AmCategoryAxis : AmAxisBase

/**
 Angle of label rotation, if the number of series exceeds autoRotateCount and parseDates is set to false.
 */
@property(strong) NSNumber * autoRotateAngle;

/**
 If the number of category axis items will exceed the autoRotateCount, the labels will be rotated by autoRotateAngle degree. Works only if parseDates is false.
 */
@property(strong) NSNumber * autoRotateCount;

/**
 Specifies if axis labels (only when it is horizontal) should be wrapped if they don't fit in the allocated space. Wrapping won't work for rotated axis labels.
 */
@property(assign) NSNumber * autoWrap;

/**
 When parse dates is on for the category axis, the chart will try to highlight the beginning of the periods, like month, in bold. Set this to false to disable the functionality.
 */
@property(assign) NSNumber * boldPeriodBeginning;

/**
 specifies a method that returns the value that should be used as categoryValue for current item. If this property is set, the return value of the custom data function takes precedence over categoryField. When a chart calls this method, it passes category value, data item from chart's data provider and reference to categoryAxis: categoryFunction(category, dataItem, categoryAxis); This method can be used both when category axis parses dates and when it doesn't. If axis parses dates, your<br>
    categoryFunction should return Date object. For example, if you have date strings in your data, you can use this method to convert these strings into Date objects.
 */
@property(assign) id categoryFunction;

/**
 This setting works only when parseDates is set to true and equalSpacing is set to false. In case you set it to false,<br>
        labels will never be centered between grid lines.
 */
@property(assign) NSNumber * centerLabelOnFullPeriod;

/**
 In case your category axis values are Date objects and parseDates is set to true, the chart will parse dates and will place your data points at irregular intervals. However if you want dates to be parsed (displayed on the axis, baloons, etc), but data points to be placed at equal intervals (omiting dates with no data), set equalSpacing to true.
 */
@property(assign) NSNumber * equalSpacing;

/**
 Sets first day of the week. 0 is Sunday, 1 is Monday, etc.
 */
@property(strong) NSNumber * firstDayOfWeek ;

/**
 Field in data provider which specifies if the category value should always be shown. For example: categoryAxis.forceShowField = "forceShow";<br>
            <br>
            And in data:<br>
            <br>
            {category:"one", forceShow:true, value:100}<br>
            <br>
            Note, this works only when parseDates is set to false.
 */
@property(strong) NSString * forceShowField;

/**
 Specifies if a grid line is placed on the center of a cell or on the beginning of a cell. Possible values are: "start" and "middle" This setting doesn't work if parseDates is set to true.
 */
@property(strong) NSString * gridPosition;

/**
 You can use it to set color of a axis label. Works only with non-date-based data.
 */
@property(strong) NSString * labelColorField;

/**
 You can use this function to format Category axis labels. If this function is set, then it is called with the following parameters passed:<br>
                <br>
                if dates are not parsed:<br>
                labelFunction(valueText, serialDataItem, categoryAxis)<br>
                <br>
                if dates are parsed:<br>
                labelFunction(valueText, date, categoryAxis)<br>
                <br>
                Your function should return string which will be displayed on the axis.
 */
@property(strong) NSString *labelFunction;

/**
 If you set it to false, the start of longer periods won't use a different date format and won't be bold.
 */
@property(assign) NSNumber * markPeriodChange;

/**
 Specifies the shortest period of your data. This should be set only if parseDates is set to "true". Possible period values: fff - milliseconds, ss - seconds, mm - minutes, hh - hours, DD - days, MM - months, YYYY - years.<br>
                    <br>
                    It's also possible to supply a number for increments, i.e. "15mm" which will instruct the chart that your data is supplied in 15 minute increments.
 */
@property(strong) NSString * minPeriod;

/**
 In case your category axis values are Date objects, set this to true. In this case the chart will parse dates and will place your data points at irregular intervals. If you want dates to be parsed, but data points to be placed at equal intervals, set both parseDates and equalSpacing to true.
 */
@property(assign) NSNumber * parseDates;

/**
 Specifies whether the graph should start on axis or not. In case you display columns, it is recommended to set this to false. If parseDates is set to true, startOnAxis will allways be false, unless equalSpacing is set to true.
 */
@property(assign) NSNumber * startOnAxis;

/**
 Position of a axis tick. Works only with non-date-based data.  Default value is "middle"
 */
@property(strong) NSString * tickPosition;

/**
 Works only when parseDates is set to true and equalSpacing is false. If you set it to true, at the position where bigger period changes, category axis will display date strings of bot small and big period, in two rows.
 */
@property(assign) NSNumber * twoLineMode;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end