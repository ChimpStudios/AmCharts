// 
//  AmZoomControl.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmZoomControl : NSObject

/**
 Button border opacity.
 */
@property(strong) NSNumber * buttonBorderAlpha;

/**
 Button border thickness.
 */
@property(strong) NSNumber * buttonBorderThickness;

/**
 Button roll-over color.
 */
@property(strong) NSString * buttonColorHover;

/**
 Button corner radius.
 */
@property(strong) NSNumber * buttonCornerRadius;

/**
 Button fill opacity.
 */
@property(strong) NSNumber * buttonFillAlpha;

/**
 Button fill color.
 */
@property(strong) NSString * buttonFillColor;

/**
 Opacity of button icons.
 */
@property(strong) NSNumber * buttonIconAlpha ;

/**
 Button icon color.
 */
@property(strong) NSString * buttonIconColor;

/**
 Button roll-over color.
 */
@property(strong) NSString * buttonRollOverColor;

/**
 Size of buttons.
 */
@property(strong) NSNumber * buttonSize;

/**
 Opacity of zoom-grid.
 */
@property(strong) NSNumber * gridAlpha;

/**
 Opacity of background under zoom-grid.
 */
@property(strong) NSNumber * gridBackgroundAlpha;

/**
 Color of background under zoom-grid.
 */
@property(strong) NSString * gridBackgroundColor;

/**
 Grid color.
 */
@property(strong) NSString * gridColor;

/**
 Zoom grid color.
 */
@property(strong) NSNumber * gridHeight;

/**
 Home icon color.
 */
@property(strong) NSString * homeIconColor;

/**
 File name of home icon. You can also find homeIconWhite.gif in the images folder, or you can create your own image.
 */
@property(strong) NSString * homeIconFile;

/**
 Size of icons. You might need to change size of icon gif files if you change this property.
 */
@property(strong) NSNumber * iconSize;

/**
 Distance from left side of map container to the small map.
 */
@property(strong) NSNumber * left;

/**
 Max zoom level.
 */
@property(strong) NSNumber * maxZoomLevel;

/**
 Min zoom level.
 */
@property(strong) NSNumber * minZoomLevel;

/**
 Specifies if pan control is enabled.
 */
@property(assign) BOOL panControlEnabled;

/**
 Specifies by what part of a map container width/height the map will be moved when user clicks on pan arrows.
 */
@property(strong) NSNumber * panStepSize;

/**
 Distance from top of map container to the small map.
 */
@property(strong) NSNumber * top;

/**
 Specifies if zoom control is enabled.
 */
@property(assign) BOOL zoomControlEnabled ;

/**
 zoomFactor is a number by which current scale will be multiplied when user clicks on zoom in button or divided when user clicks on zoom-out button.
 */
@property(strong) NSNumber * zoomFactor;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end