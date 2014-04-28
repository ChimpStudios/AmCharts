// 
//  AmStockEventSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmStockEventSettings : NSObject

/**
 Opacity of bullet background.
 @version 3.4.8
 */
@property(strong) NSNumber * backgroundAlpha;

/**
 Color of bullet background.
 @version 3.4.8
 */
@property(strong) NSString * backgroundColor;

/**
 Background color of a roll-over balloon.
 @version 3.4.8
 */
@property(strong) NSString * balloonColor;

/**
 Opacity of bullet border.
 @version 3.4.8
 */
@property(strong) NSNumber * borderAlpha;

/**
 Bullet border color.
 @version 3.4.8
 */
@property(strong) NSString * borderColor;

/**
 Roll-over background color.
 @version 3.4.8
 */
@property(strong) NSString * rollOverColor;

/**
 Type of bullet. Possible values are: "flag", "sign", "pin", "triangleUp", "triangleDown", "triangleLeft", "triangleRight", "text", "arrowUp", "arrowDown".
 @version 3.4.8
 */
@property(strong) NSString * type;

@end