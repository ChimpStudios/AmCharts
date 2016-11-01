// 
//  AmGaugeAxis.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmGaugeAxis : NSObject

/**
 Axis opacity.
 */
@property(strong) NSNumber * axisAlpha;

/**
 Axis color.
 */
@property(strong) NSString * axisColor;

/**
 Thickness of the axis outline.
 */
@property(strong) NSNumber * axisThickness;

/**
 Opacity of band fills.
 */
@property(strong) NSNumber * bandAlpha;

/**
 Opacity of band outlines.
 */
@property(strong) NSNumber * bandOutlineAlpha;

/**
 Color of band outlines.
 */
@property(strong) NSString * bandOutlineColor;

/**
 Thickness of band outlines.
 */
@property(strong) NSNumber * bandOutlineThickness;

/**
 Array of bands - GaugeBand objects. Bands are used to draw color fills between specified values.
 */
@property(strong) NSMutableArray * bands;

/**
 Text displayed below the axis center.
 */
@property(strong) NSString * bottomText;

/**
 Specifies if text should be bold.
 */
@property(strong) NSNumber * bottomTextBold;

/**
 Bottom text color.
 */
@property(strong) NSString * bottomTextColor;

/**
 Font size of bottom text.
 */
@property(strong) NSNumber * bottomTextFontSize;

/**
 Y offset of bottom text.
 */
@property(strong) NSNumber * bottomTextYOffset;

/**
 X position of the axis, relative to the center of the gauge.
 */
@property(strong) NSString * centerX;

/**
 Y position of the axis, relative to the center of the gauge.
 */
@property(strong) NSString * centerY;

/**
 Axis end angle. Valid values are from  - 180 to 180.
 */
@property(strong) NSNumber * endAngle;

/**
 Axis end (max) value
 */
@property(strong) NSNumber * endValue;

/**
 Number of grid lines. Note, GaugeAxis doesn't adjust gridCount, so you should check your values and choose a proper gridCount which would result grids at round numbers.
 */
@property(strong) NSNumber * gridCount;

/**
 Specifies if grid should be drawn inside or outside the axis.
 */
@property(strong) NSNumber * gridInside;

/**
 Specifies if labels should be placed inside or outside the axis.
 */
@property(strong) NSNumber * inside;

/**
 Frequency of labels.
 */
@property(strong) NSNumber * labelFrequency;

/**
 Distance from axis to the labels.
 */
@property(strong) NSNumber * labelOffset;

/**
 Interval, at which minor ticks should be placed.
 */
@property(strong) NSNumber * minorTickInterval;

/**
 Length of a minor tick.
 */
@property(strong) NSNumber * minorTickLength;

/**
 Axis radius.
 */
@property(strong) NSString * radius;

/**
 Specifies if the first label should be shown.
 */
@property(strong) NSNumber * showFirstLabel;

/**
 Specifies if the last label should be shown.
 */
@property(strong) NSNumber * showLastLabel;

/**
 Axis start angle. Valid values are from  - 180 to 180.
 */
@property(strong) NSNumber * startAngle;

/**
 Axis start (min) value.
 */
@property(strong) NSNumber * startValue;

/**
 Opacity of axis ticks.
 */
@property(strong) NSNumber * tickAlpha;

/**
 Color of axis ticks.
 */
@property(strong) NSString * tickColor;

/**
 Length of a major tick.
 */
@property(strong) NSNumber * tickLength;

/**
 Tick thickness.
 */
@property(strong) NSNumber * tickThickness;

/**
 Text displayed above the axis center.
 */
@property(strong) NSString * topText;

/**
 Specifies if text should be bold.
 */
@property(strong) NSNumber * topTextBold;

/**
 Color of top text.
 */
@property(strong) NSString * topTextColor;

/**
 Font size of top text.
 */
@property(strong) NSNumber * topTextFontSize;

/**
 Y offset of top text.
 */
@property(strong) NSNumber * topTextYOffset;

/**
 A string which can be placed next to axis labels.
 */
@property(strong) NSString * unit;

/**
 Position of the unit.
 */
@property(strong) NSString * unitPosition;

/**
 Specifies if small and big numbers should use prefixes to make them more readable.
 */
@property(strong) NSNumber * usePrefixes;

/**
 Interval, at which ticks with values should be placed.
 */
@property(strong) NSNumber * valueInterval;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end
