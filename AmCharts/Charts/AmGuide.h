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
 */
@property(assign) BOOL above;

/**
 Radar chart only. Specifies angle at which guide should start. Affects only fills, not lines.
 */
@property(strong) NSNumber * angle;

/**
 Baloon fill color.
 */
@property(strong) NSString * balloonColor;

/**
 The text which will be displayed if the user rolls-over the guide.
 */
@property(strong) NSString * balloonText;

/**
 Category of the guide (in case the guide is for category axis).
 */
@property(strong) NSString * category;

/**
 Dash length.
 */
@property(strong) NSNumber * dashLength;

/**
 Date of the guide (in case the guide is for category axis and parseDates is set to true).
 */
@property(strong) NSDate * date;

/**
 Works if a guide is added to CategoryAxis and this axis is non-date-based. If you set it to true, the guide will start (or be placed, if it's not a fill) on the beginning of the category cell and will end at the end of toCategory cell.
 */
@property(assign) BOOL expand;

/**
 Fill opacity. Value range is 0 - 1.
 */
@property(strong) NSNumber * fillAlpha;

/**
 Fill color.
 */
@property(strong) NSString * fillColor;

/**
 Font size of guide label.
 */
@property(strong) NSNumber * fontSize;

/**
 Unique id of a Guide. You don't need to set it, unless you want to.
 */
@property(strong) NSString * uid;

/**
 Specifies whether label should be placed inside or outside plot area.
 */
@property(assign) BOOL inside;

/**
 The label which will be displayed near the guide.
 */
@property(strong) NSString * label;

/**
 Rotation angle of a guide label.
 */
@property(strong) NSNumber * labelRotation;

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
 Position of guide label. Possible values are "left" or "right" for horizontal axis and "top" or "bottom" for vertical axis.
 */
@property(strong) NSString * position;

/**
 Tick length.
 */
@property(strong) NSNumber * tickLength;

/**
 Radar chart only. Specifies angle at which guide should end. Affects only fills, not lines.
 */
@property(strong) NSNumber * toAngle;

/**
 "To" category of the guide (in case the guide is for category axis).
 */
@property(strong) NSString * toCategory;

/**
 "To" date of the guide (in case the guide is for category axis and parseDates is set to true) If you have both date and toDate, the space between these two dates can be filled with color.
 */
@property(strong) NSDate * toDate;

/**
 "To" value of the guide (in case the guide is for value axis).
 */
@property(strong) NSNumber * toValue;

/**
 Value of the guide (in case the guide is for value axis).
 */
@property(strong) NSNumber * value;

/**
 Value axis of a guide. As you can add guides directly to the chart, you might need to specify which which value axis should be used.
 */
@property(strong) AmValueAxis * valueAxis;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end