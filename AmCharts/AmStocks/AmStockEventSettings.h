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
 */
@property(strong) NSNumber * backgroundAlpha;

/**
 Color of bullet background.
 */
@property(strong) NSString * backgroundColor;

/**
 Background color of a roll-over balloon.
 */
@property(strong) NSString * balloonColor;

/**
 Opacity of bullet border.
 */
@property(strong) NSNumber * borderAlpha;

/**
 Bullet border color.
 */
@property(strong) NSString * borderColor;

/**
 Roll-over background color.
 */
@property(strong) NSString * rollOverColor;

/**
 Type of bullet. Possible values are: "flag", "sign", "pin", "triangleUp", "triangleDown", "triangleLeft", "triangleRight", "text", "arrowUp", "arrowDown".
 */
@property(strong) NSString * type;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end