// 
//  AmGuide.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@class AmValueAxis;

@interface AmGuide : NSObject

/**
 If you set it to true, the guide will be displayed above the graphs.
 @version 3.4.8
 */
@property(assign) BOOL above;

/**
 Radar chart only. Specifies angle at which guide should start. Affects only fills, not lines.
 @version 3.4.8
 */
@property(strong) NSNumber * angle;

/**
 Baloon fill color.
 @version 3.4.8
 */
@property(strong) NSString * balloonColor;

/**
 The text which will be displayed if the user rolls-over the guide.
 @version 3.4.8
 */
@property(strong) NSString * balloonText;

/**
 Category of the guide (in case the guide is for category axis).
 @version 3.4.8
 */
@property(strong) NSString * category;

/**
 Dash length.
 @version 3.4.8
 */
@property(strong) NSNumber * dashLength;

/**
 Date of the guide (in case the guide is for category axis and parseDates is set to true).
 @version 3.4.8
 */
@property(strong) NSDate * date;

/**
 Fill opacity. Value range is 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * fillAlpha;

/**
 Fill color.
 @version 3.4.8
 */
@property(strong) NSString * fillColor;

/**
 Font size of guide label.
 @version 3.4.8
 */
@property(strong) NSNumber * fontSize;

/**
 Unique id of a Guide. You don't need to set it, unless you want to.
 @version 3.4.8
 */
@property(strong) NSString * uid;

/**
 Specifies whether label should be placed inside or outside plot area.
 @version 3.4.8
 */
@property(assign) BOOL inside;

/**
 The label which will be displayed near the guide.
 @version 3.4.8
 */
@property(strong) NSString * label;

/**
 Rotation angle of a guide label.
 @version 3.4.8
 */
@property(strong) NSNumber * labelRotation;

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
 Position of guide label. Possible values are "left" or "right" for horizontal axis and "top" or "bottom" for vertical axis.
 @version 3.4.8
 */
@property(strong) NSString * position;

/**
 Tick length.
 @version 3.4.8
 */
@property(strong) NSNumber * tickLength;

/**
 Radar chart only. Specifies angle at which guide should end. Affects only fills, not lines.
 @version 3.4.8
 */
@property(strong) NSNumber * toAngle;

/**
 "To" category of the guide (in case the guide is for category axis).
 @version 3.4.8
 */
@property(strong) NSString * toCategory;

/**
 "To" date of the guide (in case the guide is for category axis and parseDates is set to true) If you have both date and toDate, the space between these two dates can be filled with color.
 @version 3.4.8
 */
@property(strong) NSDate * toDate;

/**
 "To" value of the guide (in case the guide is for value axis).
 @version 3.4.8
 */
@property(strong) NSNumber * toValue;

/**
 Value of the guide (in case the guide is for value axis).
 @version 3.4.8
 */
@property(strong) NSNumber * value;

/**
 Value axis of a guide. As you can add guides directly to the chart, you might need to specify which which value axis should be used.
 @version 3.4.8
 */
@property(strong) ValueAxis * valueAxis;

@end