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
 @version 3.4.8
 */
@property(strong) NSNumber * buttonBorderAlpha;

/**
 Button border thickness.
 @version 3.4.8
 */
@property(strong) NSNumber * buttonBorderThickness;

/**
 Button roll-over color.
 @version 3.4.8
 */
@property(strong) NSString * buttonColorHover;

/**
 Button corner radius.
 @version 3.4.8
 */
@property(strong) NSNumber * buttonCornerRadius;

/**
 Button fill opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * buttonFillAlpha;

/**
 Button fill color.
 @version 3.4.8
 */
@property(strong) NSString * buttonFillColor;

/**
 Opacity of button icons.
 @version 3.4.8
 */
@property(strong) NSNumber * buttonIconAlpha ;

/**
 Button icon color.
 @version 3.4.8
 */
@property(strong) NSString * buttonIconColor;

/**
 Button roll-over color.
 @version 3.4.8
 */
@property(strong) NSString * buttonRollOverColor;

/**
 Size of buttons.
 @version 3.4.8
 */
@property(strong) NSNumber * buttonSize;

/**
 Opacity of zoom-grid.
 @version 3.4.8
 */
@property(strong) NSNumber * gridAlpha;

/**
 Opacity of background under zoom-grid.
 @version 3.4.8
 */
@property(strong) NSNumber * gridBackgroundAlpha;

/**
 Color of background under zoom-grid.
 @version 3.4.8
 */
@property(strong) NSString * gridBackgroundColor;

/**
 Grid color.
 @version 3.4.8
 */
@property(strong) NSString * gridColor;

/**
 Zoom grid color.
 @version 3.4.8
 */
@property(strong) NSNumber * gridHeight;

/**
 Home icon color.
 @version 3.4.8
 */
@property(strong) NSString * homeIconColor;

/**
 File name of home icon. You can also find homeIconWhite.gif in the images folder, or you can create your own image.
 @version 3.4.8
 */
@property(strong) NSString * homeIconFile;

/**
 Size of icons. You might need to change size of icon gif files if you change this property.
 @version 3.4.8
 */
@property(strong) NSNumber * iconSize;

/**
 Distance from left side of map container to the small map.
 @version 3.4.8
 */
@property(strong) NSNumber * left;

/**
 Max zoom level.
 @version 3.4.8
 */
@property(strong) NSNumber * maxZoomLevel;

/**
 Min zoom level.
 @version 3.4.8
 */
@property(strong) NSNumber * minZoomLevel;

/**
 Specifies if pan control is enabled.
 @version 3.4.8
 */
@property(assign) BOOL panControlEnabled;

/**
 Specifies by what part of a map container width/height the map will be moved when user clicks on pan arrows.
 @version 3.4.8
 */
@property(strong) NSNumber * panStepSize;

/**
 Distance from top of map container to the small map.
 @version 3.4.8
 */
@property(strong) NSNumber * top;

/**
 Specifies if zoom control is enabled.
 @version 3.4.8
 */
@property(assign) BOOL zoomControlEnabled ;

/**
 zoomFactor is a number by which current scale will be multiplied when user clicks on zoom in button or divided when user clicks on zoom-out button.
 @version 3.4.8
 */
@property(strong) NSNumber * zoomFactor;

@end