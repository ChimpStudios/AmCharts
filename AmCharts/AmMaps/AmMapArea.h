// 
//  AmMapArea.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmMapObject.h"


@interface AmMapArea : AmMapObject

/**
 Specifies if the area should be zoomed-in when user clicks on it, even if zoom properties are not set.
 @version 3.4.8
 */
@property(assign) BOOL autoZoom;

/**
 Id of the area in SVG file.
 @version 3.4.8
 */
@property(strong) NSString * uid;

/**
 Opacity of area's outline.
 @version 3.4.8
 */
@property(strong) NSNumber * outlineAlpha;

/**
 Color of area's outline.
 @version 3.4.8
 */
@property(strong) NSString * outlineColor;

/**
 Thickness of area's outline.
 @version 3.4.8
 */
@property(strong) NSNumber * outlineThickness;

/**
 Value of pattern should be object with url, width, height of an image, optionally it might have x, y, randomX and randomY values. For example: {"url":"../amcharts/patterns/black/pattern1.png", "width":4, "height":4}. Check ammap/patterns folder for some patterns. You can create your own patterns and use them. 
 @version 3.4.8
 */
@property(strong) NSString * pattern;

/**
 Color of area's outline when user rolls-over it.
 @version 3.4.8
 */
@property(strong) NSString * rollOverOutlineColor;

/**
 Value of the area. Areas will be filled with color range from AreasSettings.color to AreasSettings.colorSolid, depending on the value.
 @version 3.4.8
 */
@property(strong) NSNumber * value;

@end