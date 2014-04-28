// 
//  AmLinesSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmLinesSettings : NSObject

/**
 Position of the arrows. Possible values are "start", "end", "middle", "both" and "none".
 @version 3.4.8
 */
@property(strong) NSString * arrow;

/**
 Opacity of the arrows.
 @version 3.4.8
 */
@property(strong) NSNumber * arrowAlpha;

/**
 Arrow color. Will use line color if not set.
 @version 3.4.8
 */
@property(strong) NSString * arrowColor;

/**
 Size of the arrows.
 @version 3.4.8
 */
@property(strong) NSNumber * arrowSize;

/**
 Text which is displayed in a roll-over balloon. You can use the following tags: [[title]], [[description]], [[value]] and [[percent]]
 @version 3.4.8
 */
@property(strong) NSString * balloonText;

/**
 Line color.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Length of a dash. 0 means line is not dashed.
 @version 3.4.8
 */
@property(strong) NSNumber * dashLength;

/**
 Height of a description window.
 @version 3.4.8
 */
@property(strong) NSNumber * descriptionWindowHeight;

/**
 Width of a description window.
 @version 3.4.8
 */
@property(strong) NSNumber * descriptionWindowWidth;

/**
 X position of a description window.
 @version 3.4.8
 */
@property(strong) NSNumber * descriptionWindowX;

/**
 Y position of a description window.
 @version 3.4.8
 */
@property(strong) NSNumber * descriptionWindowY;

/**
 Line thickness.
 @version 3.4.8
 */
@property(strong) NSNumber * thickness;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end