// 
//  AmAreasSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmAreasSettings : NSObject

/**
 Opacity of areas.
 @version 3.4.8
 */
@property(strong) NSNumber * alpha;

/**
 Specifies if the areas should be zoomed-in when user clicks on them, event if zoom properties are not set.
 @version 3.4.8
 */
@property(assign) BOOL autoZoom;

/**
 Text which is displayed in a roll-over balloon. You can use the following tags: [[title]], [[description]], [[value]] and [[percent]]
 @version 3.4.8
 */
@property(strong) NSString * balloonText;

/**
 Color of the areas.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Color of area with highest value. Colors for areas with values less then highest will be colored with intermediate colors between color and colorSolid. Use colorSteps property of AmMap to change the number of intermediate colors.
 @version 3.4.8
 */
@property(strong) NSString * colorSolid;

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
 Color of area when user rolls-over it.
 @version 3.4.8
 */
@property(strong) NSString * rollOverColor;

/**
 Opacity of rolled-over area outline.
 @version 3.4.8
 */
@property(strong) NSNumber * rollOverOutlineAlpha;

/**
 Color of area's outline when user rolls-over it.
 @version 3.4.8
 */
@property(strong) NSString * rollOverOutlineColor;

/**
 Thickness of outline of a rolled-over area.
 @version 3.4.8
 */
@property(strong) NSNumber * rollOverOutlineThickness;

/**
 Specifies if areas are selectable, even no zoom/description/url is set.
 @version 3.4.8
 */
@property(assign) BOOL selectable;

/**
 Color of area which is currently selected.
 @version 3.4.8
 */
@property(strong) NSString * selectedColor;

/**
 Color of selected area's outline.
 @version 3.4.8
 */
@property(strong) NSString * selectedOutlineColor;

/**
 Opacity of all areas which are in the map svg file, but not listed as areas in DataSet.
 @version 3.4.8
 */
@property(strong) NSNumber * unlistedAreasAlpha;

/**
 Color of all areas which are in the map svg file, but not listed as areas in DataSet.
 @version 3.4.8
 */
@property(strong) NSString * unlistedAreasColor;

/**
 Opacity of all areas' outline which are in the map svg file, but not listed as areas in DataSet.
 @version 3.4.8
 */
@property(strong) NSNumber * unlistedAreasOutlineAlpha;

/**
 Color of all areas' outline which are in the map svg file, but not listed as areas in DataSet.
 @version 3.4.8
 */
@property(strong) NSString * unlistedAreasOutlineColor;

@end