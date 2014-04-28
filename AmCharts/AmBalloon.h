// 
//  AmBalloon.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmBalloon : NSObject

/**
 If this is set to true, border color instead of background color will be changed when user rolls-over the slice, graph, etc.
 @version 3.4.8
 */
@property(assign) BOOL adjustBorderColor;

/**
 Duration of balloon movement from previous point to current point, in seconds.
 @version 3.4.8
 */
@property(strong) NSNumber * animationDuration;

/**
 Balloon border opacity. Value range is 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * borderAlpha;

/**
 Balloon border color. Will only be used of adjustBorderColor is false.
 @version 3.4.8
 */
@property(strong) NSString * borderColor;

/**
 Balloon border thickness.
 @version 3.4.8
 */
@property(strong) NSNumber * borderThickness;

/**
 Color of text in the balloon.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Balloon corner radius.
 @version 3.4.8
 */
@property(strong) NSNumber * cornerRadius;

/**
 Duration of a fade out animation, in seconds.
 @version 3.4.8
 */
@property(strong) NSNumber * fadeOutDuration;

/**
 Balloon background opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * fillAlpha;

/**
 Balloon background color. Usually balloon background color is set by the chart. Only if "adjustBorderColor" is "true" this color will be used.
 @version 3.4.8
 */
@property(strong) NSString * fillColor;

/**
 Specifies if balloon should follow mouse when hovering the slice/column/bullet or stay in fixed position (this does not affect balloon behavior if ChartCursor is used).
 @version 3.4.8
 */
@property(assign) BOOL fixedPosition;

/**
 Size of text in the balloon. Chart's fontSize is used by default.
 @version 3.4.8
 */
@property(strong) NSNumber * fontSize;

/**
 Horizontal padding of the balloon.
 @version 3.4.8
 */
@property(strong) NSNumber * horizontalPadding;

/**
 Defines horizontal distance from mouse pointer to balloon pointer. If you set it to a small value, the balloon might flicker, as mouse might lose focus on hovered object.
 @version 3.4.8
 */
@property(strong) NSNumber * offsetX;

/**
 Defines vertical distance from mouse pointer to balloon pointer. If you set it to a small value, the balloon might flicker, as mouse might lose focus on hovered object.
 @version 3.4.8
 */
@property(strong) NSNumber * offsetY;

/**
 The width of the pointer (arrow) "root". Only used if cornerRadius is 0.
 @version 3.4.8
 */
@property(strong) NSNumber * pointerWidth;

/**
 Opacity of a shadow.
 @version 3.4.8
 */
@property(strong) NSNumber * shadowAlpha;

/**
 Color of a shadow.
 @version 3.4.8
 */
@property(strong) NSString * shadowColor;

/**
 If cornerRadius of a balloon is &gt;0, showBullet is set to true for value balloons when ChartCursor is used. If you don't want the bullet near the balloon, set it to false: chart.balloon.showBullet = false
 @version 3.4.8
 */
@property(assign) BOOL showBullet;

/**
 Text alignment, possible values "left", "middle" and "right"
 @version 3.4.8
 */
@property(strong) NSString * textAlign;

/**
 Vertical padding of the balloon.
 @version 3.4.8
 */
@property(strong) NSNumber * verticalPadding;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end