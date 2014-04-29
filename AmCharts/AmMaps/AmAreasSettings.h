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
 */
@property(strong) NSNumber * alpha;

/**
 Specifies if the areas should be zoomed-in when user clicks on them, event if zoom properties are not set.
 */
@property(assign) BOOL autoZoom;

/**
 Text which is displayed in a roll-over balloon. You can use the following tags: [[title]], [[description]], [[value]] and [[percent]]
 */
@property(strong) NSString * balloonText;

/**
 Color of the areas.
 */
@property(strong) NSString * color;

/**
 Color of area with highest value. Colors for areas with values less then highest will be colored with intermediate colors between color and colorSolid. Use colorSteps property of AmMap to change the number of intermediate colors.
 */
@property(strong) NSString * colorSolid;

/**
 Height of a description window.
 */
@property(strong) NSNumber * descriptionWindowHeight;

/**
 Width of a description window.
 */
@property(strong) NSNumber * descriptionWindowWidth;

/**
 X position of a description window.
 */
@property(strong) NSNumber * descriptionWindowX;

/**
 Y position of a description window.
 */
@property(strong) NSNumber * descriptionWindowY;

/**
 Opacity of area's outline.
 */
@property(strong) NSNumber * outlineAlpha;

/**
 Color of area's outline.
 */
@property(strong) NSString * outlineColor;

/**
 Thickness of area's outline.
 */
@property(strong) NSNumber * outlineThickness;

/**
 Color of area when user rolls-over it.
 */
@property(strong) NSString * rollOverColor;

/**
 Opacity of rolled-over area outline.
 */
@property(strong) NSNumber * rollOverOutlineAlpha;

/**
 Color of area's outline when user rolls-over it.
 */
@property(strong) NSString * rollOverOutlineColor;

/**
 Thickness of outline of a rolled-over area.
 */
@property(strong) NSNumber * rollOverOutlineThickness;

/**
 Specifies if areas are selectable, even no zoom/description/url is set.
 */
@property(assign) BOOL selectable;

/**
 Color of area which is currently selected.
 */
@property(strong) NSString * selectedColor;

/**
 Color of selected area's outline.
 */
@property(strong) NSString * selectedOutlineColor;

/**
 Opacity of all areas which are in the map svg file, but not listed as areas in DataSet.
 */
@property(strong) NSNumber * unlistedAreasAlpha;

/**
 Color of all areas which are in the map svg file, but not listed as areas in DataSet.
 */
@property(strong) NSString * unlistedAreasColor;

/**
 Opacity of all areas' outline which are in the map svg file, but not listed as areas in DataSet.
 */
@property(strong) NSNumber * unlistedAreasOutlineAlpha;

/**
 Color of all areas' outline which are in the map svg file, but not listed as areas in DataSet.
 */
@property(strong) NSString * unlistedAreasOutlineColor;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end