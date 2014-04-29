// 
//  AmSmallMap.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmSmallMap : NSObject

/**
 Background opacity.
 */
@property(strong) NSNumber * backgroundAlpha;

/**
 Background color.
 */
@property(strong) NSString * backgroundColor;

/**
 Border opacity.
 */
@property(strong) NSNumber * borderAlpha;

/**
 Border color.
 */
@property(strong) NSString * borderColor;

/**
 Border thickness.
 */
@property(strong) NSNumber * borderThickness;

/**
 Distance from bottom of map container to the small map. You should set property "top" to NaN in order this property to work.
 */
@property(strong) NSNumber * bottom;

/**
 Distance from left side of map container to the small map. You should set property "right" to NaN in order this property to work.
 */
@property(strong) NSNumber * left;

/**
 Color of a map of a small map control.
 */
@property(strong) NSString * mapColor;

/**
 Size of minimize button. You might need to change size of arrowUp.gif and arrowDown.gif if you change this property.
 */
@property(strong) NSNumber * minimizeButtonWidth;

/**
 Color of rectangle, which indicates zoom level and position.
 */
@property(strong) NSString * rectangleColor;

/**
 Distance from right side of map container to the small map. You should set property "left" to NaN in order this property to work.
 */
@property(strong) NSNumber * right;

/**
 Size of small map relative to map container size.
 */
@property(strong) NSNumber * size;

/**
 Distance from top of map container to the small map. You should set property "bottom" to NaN in order this property to work.
 */
@property(strong) NSNumber * top;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end