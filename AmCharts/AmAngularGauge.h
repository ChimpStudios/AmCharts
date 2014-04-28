// 
//  AmAngularGauge.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmChart.h"


@interface AmAngularGauge : AmChart

/**
 If you set this to true, the gauge will try to occupy all available space.
 @version 3.4.8
 */
@property(assign) BOOL adjustSize;

/**
 Array of arrows.
 @version 3.4.8
 */
@property(strong) NSMutableArray * arrows;

/**
 Array of axes.
 @version 3.4.8
 */
@property(strong) NSMutableArray * axes;

/**
 In case you use gauge to create a clock, set this to true.
 @version 3.4.8
 */
@property(assign) BOOL clockWiseOnly;

/**
 Opacity of gauge face.
 @version 3.4.8
 */
@property(strong) NSNumber * faceAlpha;

/**
 Opacity of face border.
 @version 3.4.8
 */
@property(strong) NSNumber * faceBorderAlpha;

/**
 Color of face border.
 @version 3.4.8
 */
@property(strong) NSString * faceBorderColor;

/**
 Width of face border.
 @version 3.4.8
 */
@property(strong) NSNumber * faceBorderWidth;

/**
 Color of a gauge face. You should set faceAlpha to &gt; 0 if you want to see it.
 @version 3.4.8
 */
@property(strong) NSString * faceColor;

/**
 Pattern object for gauge face. Pattern object example: {"url":"../amcharts/patterns/black/pattern1.png", "width":4, "height":4}
 @version 3.4.8
 */
@property(strong) NSString * facePattern;

/**
 X coordinate of a gauge. Will be placed in the center, if not set any.
 @version 3.4.8
 */
@property(strong) NSString * gaugeX;

/**
 Y coordinate of a gauge. Will be placed in the center, if not set any.
 @version 3.4.8
 */
@property(strong) NSString * gaugeY;

/**
 Distance bottom of a chart's container to the gauge.
 @version 3.4.8
 */
@property(strong) NSNumber * marginBottom;

/**
 Distance from left side of a chart's container to the gauge.
 @version 3.4.8
 */
@property(strong) NSNumber * marginLeft;

/**
 Distance from right side of a chart's container to the gauge.
 @version 3.4.8
 */
@property(strong) NSNumber * marginRight;

/**
 Distance from top of a chart's container to the gauge.
 @version 3.4.8
 */
@property(strong) NSNumber * marginTop;

/**
 Minimum radius of a gauge.
 @version 3.4.8
 */
@property(strong) NSNumber * minRadius;

/**
 Duration of arrow animation.
 @version 3.4.8
 */
@property(strong) NSNumber * startDuration;

/**
 Possible values are: easeOutSine, easeInSine, elastic, bounce
 @version 3.4.8
 */
@property(strong) NSString * startEffect;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end