// 
//  AmValueLegend.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmValueLegend : NSObject

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
 Distance from bottom of the map container to the value legend.
 */
@property(strong) NSNumber * bottom;

/**
 Text color.
 */
@property(strong) NSString * color;

/**
 Font size.
 */
@property(strong) NSNumber * fontSize;

/**
 Height of value legend.
 */
@property(strong) NSNumber * height;

/**
 Distance from left of the map container to the value legend.
 */
@property(strong) NSNumber * left;

/**
 Value, which will be displayed on the right of the legend (will display max value in case not set any).
 */
@property(strong) NSString * maxValue;

/**
 Value which will be displayed on the left of a legend.
 */
@property(strong) NSString * minValue;

/**
 Distance from right of the map container to the value legend.
 */
@property(strong) NSNumber * right;

/**
 Specifies if color range should be displayed as a gradient or as a set of rectangles, each with different color.
 */
@property(assign) BOOL showAsGradient;

/**
 Distance from top of the map container to the value legend.
 */
@property(strong) NSNumber * top;

/**
 Width of value legend.
 */
@property(strong) NSNumber * width;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end