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
 @version 3.4.8
 */
@property(strong) NSNumber * axisAlpha;

/**
 Axis color.
 @version 3.4.8
 */
@property(strong) NSString * axisColor;

/**
 Thickness of the axis outline.
 @version 3.4.8
 */
@property(strong) NSNumber * axisThickness;

/**
 Opacity of band fills.
 @version 3.4.8
 */
@property(strong) NSNumber * bandAlpha;

/**
 Opacity of band outlines.
 @version 3.4.8
 */
@property(strong) NSNumber * bandOutlineAlpha;

/**
 Color of band outlines.
 @version 3.4.8
 */
@property(strong) NSString * bandOutlineColor;

/**
 Thickness of band outlines.
 @version 3.4.8
 */
@property(strong) NSNumber * bandOutlineThickness;

/**
 Array of bands - GaugeBand objects. Bands are used to draw color fills between specified values.
 @version 3.4.8
 */
@property(strong) NSMutableArray * bands;

/**
 Text displayed below the axis center.
 @version 3.4.8
 */
@property(strong) NSString * bottomText;

/**
 Specifies if text should be bold.
 @version 3.4.8
 */
@property(assign) BOOL bottomTextBold;

/**
 Bottom text color.
 @version 3.4.8
 */
@property(strong) NSString * bottomTextColor;

/**
 Font size of bottom text.
 @version 3.4.8
 */
@property(strong) NSNumber * bottomTextFontSize;

/**
 Y offset of bottom text.
 @version 3.4.8
 */
@property(strong) NSNumber * bottomTextYOffset;

/**
 X position of the axis, relative to the center of the gauge.
 @version 3.4.8
 */
@property(strong) NSString * centerX;

/**
 Y position of the axis, relative to the center of the gauge.
 @version 3.4.8
 */
@property(strong) NSString * centerY;

/**
 Axis end angle. Valid values are from  - 180 to 180.
 @version 3.4.8
 */
@property(strong) NSNumber * endAngle;

/**
 Axis end (max) value
 @version 3.4.8
 */
@property(strong) NSNumber * endValue;

/**
 Number of grid lines. Note, GaugeAxis doesn't adjust gridCount, so you should check your values and choose a proper gridCount which would result grids at round numbers.
 @version 3.4.8
 */
@property(strong) NSNumber * gridCount;

/**
 Specifies if grid should be drawn inside or outside the axis.
 @version 3.4.8
 */
@property(assign) BOOL gridInside;

/**
 Specifies if labels should be placed inside or outside the axis.
 @version 3.4.8
 */
@property(assign) BOOL inside;

/**
 Frequency of labels.
 @version 3.4.8
 */
@property(strong) NSNumber * labelFrequency;

/**
 Distance from axis to the labels.
 @version 3.4.8
 */
@property(strong) NSNumber * labelOffset;

/**
 Interval, at which minor ticks should be placed.
 @version 3.4.8
 */
@property(strong) NSNumber * minorTickInterval;

/**
 Length of a minor tick.
 @version 3.4.8
 */
@property(strong) NSNumber * minorTickLength;

/**
 Axis radius.
 @version 3.4.8
 */
@property(strong) NSString * radius;

/**
 Specifies if the first label should be shown.
 @version 3.4.8
 */
@property(assign) BOOL showFirstLabel;

/**
 Specifies if the last label should be shown.
 @version 3.4.8
 */
@property(assign) BOOL showLastLabel;

/**
 Axis start angle. Valid values are from  - 180 to 180.
 @version 3.4.8
 */
@property(strong) NSNumber * startAngle;

/**
 Axis start (min) value.
 @version 3.4.8
 */
@property(strong) NSNumber * startValue;

/**
 Opacity of axis ticks.
 @version 3.4.8
 */
@property(strong) NSNumber * tickAlpha;

/**
 Color of axis ticks.
 @version 3.4.8
 */
@property(strong) NSString * tickColor;

/**
 Length of a major tick.
 @version 3.4.8
 */
@property(strong) NSNumber * tickLength;

/**
 Tick thickness.
 @version 3.4.8
 */
@property(strong) NSNumber * tickThickness;

/**
 Text displayed above the axis center.
 @version 3.4.8
 */
@property(strong) NSString * topText;

/**
 Specifies if text should be bold.
 @version 3.4.8
 */
@property(assign) BOOL topTextBold;

/**
 Color of top text.
 @version 3.4.8
 */
@property(strong) NSString * topTextColor;

/**
 Font size of top text.
 @version 3.4.8
 */
@property(strong) NSNumber * topTextFontSize;

/**
 Y offset of top text.
 @version 3.4.8
 */
@property(strong) NSNumber * topTextYOffset;

/**
 A string which can be placed next to axis labels.
 @version 3.4.8
 */
@property(strong) NSString * unit;

/**
 Position of the unit.
 @version 3.4.8
 */
@property(strong) NSString * unitPosition;

/**
 Interval, at which ticks with values should be placed.
 @version 3.4.8
 */
@property(strong) NSNumber * valueInterval;

@end