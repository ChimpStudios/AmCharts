// 
//  AmValueAxis.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmAxisBase.h"

@class AmValueAxis;

@interface AmValueAxis : AmAxisBase

/**
 Radar chart only. Specifies distance from axis to the axis title (category)
 */
@property(strong) NSNumber * axisTitleOffset;

/**
 Read-only. Coordinate of the base value.
 */
@property(strong) NSNumber * baseCoord;

/**
 Specifies base value of the axis.
 */
@property(strong) NSNumber * baseValue;

/**
 If your values represents time units, and you want value axis labels to be formatted as duration, you have to set the duration unit. Possible values are: "ss", "mm", "hh" and "DD".
 */
@property(strong) NSString * duration;

/**
 If duration property is set, you can specify what string should be displayed next to day, hour, minute and second.
 */
@property(strong) NSString * durationUnits;

/**
 Radar chart only. Possible values are: "polygons" and "circles". Set "circles" for polar charts.
 */
@property(strong) NSString * gridType;

/**
 Unique id of value axis. It is not required to set it, unless you need to tell the graph which exact value axis it should use.
 */
@property(strong) NSString * uid;

/**
 Specifies whether guide values should be included when calculating min and max of the axis.
 */
@property(assign) BOOL includeGuidesInMinMax;

/**
 If true, the axis will include hidden graphs when calculating min and max values.
 */
@property(assign) BOOL includeHidden;

/**
 Specifies whether values on axis can only be integers or both integers and doubles.
 */
@property(assign) BOOL integersOnly;

/**
 You can use this function to format Value axis labels. This function is called and these parameters are passed: labelFunction(value, valueText, valueAxis);<br>
    Where value is numeric value, valueText is formatted string and valueAxis is a reference to valueAxis object. Your function should return string.
 */
@property(assign) id labelFunction;

/**
 Specifies if this value axis' scale should be logarithmic.
 */
@property(assign) BOOL logarithmic;

/**
 Read-only. Maximum value of the axis.
 */
@property(strong) NSNumber * max;

/**
 If you don't want max value to be calculated by the chart, set it using this property. This value might still be adjusted so that it would be possible to draw grid at rounded intervals.
 */
@property(strong) NSNumber * maximum;

/**
 Read-only. Minimum value of the axis.
 */
@property(strong) NSNumber * min;

/**
 If you don't want min value to be calculated by the chart, set it using this property. This value might still be adjusted so that it would be possible to draw grid at rounded intervals.
 */
@property(strong) NSNumber * minimum;

/**
 If set value axis scale (min and max numbers) will be multiplied by it. I.e. if set to 1.2 the scope of values will increase by 20%.
 */
@property(strong) NSNumber * minMaxMultiplier;

/**
 Possible values are: "top", "bottom", "left", "right". If axis is vertical, default position is "left". If axis is horizontal, default position is "bottom".
 */
@property(strong) NSString * position;

/**
 Precision (number of decimals) of values.
 */
@property(strong) NSNumber * precision;

/**
 Radar chart only. Specifies if categories (axes' titles) should be displayed near axes)
 */
@property(assign) BOOL radarCategoriesEnabled;

/**
 Specifies if graphs's values should be recalculated to percents.
 */
@property(assign) BOOL recalculateToPercents;

/**
 Specifies if value axis should be reversed (smaller values on top).
 */
@property(assign) BOOL reversed;

/**
 Stacking mode of the axis. Possible values are: "none", "regular", "100%", "3d".<br>
        Note, only graphs of one type will be stacked. 
 */
@property(strong) NSString * stackType;

/**
 Read-only. Value difference between two grid lines.
 */
@property(strong) NSNumber * step;

/**
 In case you synchronize one value axis with another, you need to set the synchronization multiplier. Use  synchronizeWithAxis method to set with which axis it should be synced.
 */
@property(strong) NSNumber * synchronizationMultiplier;

/**
 One value axis can be synchronized with another value axis. You can use both reference to your axis or id of the axis here. You should set synchronizationMultiplyer in order for this to work.
 */
@property(strong) AmValueAxis * synchronizeWith;

/**
 If this value axis is stacked and has columns, setting valueAxis.totalText = "[[total]]" will make it to display total value above the most-top column.
 */
@property(strong) NSString * totalText;

/**
 Color of total text.
 */
@property(strong) NSString * totalTextColor;

/**
 Distance from data point to total text.
 */
@property(strong) NSNumber * totalTextOffset;

/**
 This allows you to have logarithmic value axis and have zero values in the data. You must set it to >0 value in order to work.
 */
@property(strong) NSNumber * treatZeroAs;

/**
 Unit which will be added to the value label.
 */
@property(strong) NSString * unit;

/**
 Position of the unit. Possible values are "left" and "right".
 */
@property(strong) NSString * unitPosition;

/**
 If true, prefixes will be used for big and small numbers. You can set arrays of prefixes directly to the chart object via prefixesOfSmallNumbers and prefixesOfBigNumbers.
 */
@property(assign) BOOL usePrefixes;

/**
 If true, values will always be formatted using scientific notation (5e+8, 5e-8...) Otherwise only values bigger then 1e+21 and smaller then 1e-7 will be displayed in scientific notation.
 */
@property(assign) BOOL useScientificNotation;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end