// 
//  AmChartCursor.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@interface AmChartCursor : NSObject

/**
 If you set adjustment to -1, the balloon will be shown near previous, if you set it to 1 - near next data point.
 @version 3.4.8
 */
@property(strong) NSNumber * adjustment;

/**
 Duration of animation of a line, in seconds.
 @version 3.4.8
 */
@property(strong) NSNumber * animationDuration;

/**
 Specifies if bullet for each graph will follow the cursor.
 @version 3.4.8
 */
@property(assign) BOOL bulletsEnabled;

/**
 Size of bullets, following the cursor.
 @version 3.4.8
 */
@property(strong) NSNumber * bulletSize;

/**
 Opacity of the category balloon.
 @version 3.4.8
 */
@property(strong) NSNumber * categoryBalloonAlpha;

/**
 Color of the category balloon. cursorColor is used if not set.
 @version 3.4.8
 */
@property(strong) NSString * categoryBalloonColor;

/**
 Category balloon date format (used only if category axis parses dates). Check this page for instructions on how to format dates.
 @version 3.4.8
 */
@property(strong) NSString * categoryBalloonDateFormat;

/**
 Specifies whether category balloon is enabled.
 @version 3.4.8
 */
@property(assign) BOOL categoryBalloonEnabled;

/**
 Allows formatting any category balloon text you want. categoryBalloonFunction should return a string which will be displayed in a balloon. When categoryBalloonFunction is called, category value (or date) is passed as an argument.
 @version 3.4.8
 */
@property(assign) id categoryBalloonFunction;

/**
 Text color.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Opacity of the cursor line.
 @version 3.4.8
 */
@property(strong) NSNumber * cursorAlpha;

/**
 Color of the cursor line.
 @version 3.4.8
 */
@property(strong) NSString * cursorColor;

/**
 Specifies where the cursor line should be placed - on the beginning of the period (day, hour, etc) or in the middle (only when parseDates property of categoryAxis is set to true). If you want the cursor to follow mouse and not to glue to the nearest data point, set "mouse" here. Possible values are: start, middle, mouse.
 @version 3.4.8
 */
@property(strong) NSString * cursorPosition;

/**
 Specifies whether cursor is enabled.
 @version 3.4.8
 */
@property(assign) BOOL enabled;

/**
 If set to true, instead of a cursor line user will see a fill which width will always be equal to the width of one data item. We'd recommend setting cusrsorAlpha to 0.1 or some other small number if using this feature.
 @version 3.4.8
 */
@property(assign) BOOL fullWidth;

/**
 Size of a graph's bullet (if available) at the cursor position. If you don't want the bullet to change it's size, set this property to 1.
 @version 3.4.8
 */
@property(strong) NSNumber * graphBulletSize;

/**
 If this is set to true, only one balloon at a time will be displayed. Note, this is quite CPU consuming.
 @version 3.4.8
 */
@property(assign) BOOL oneBalloonOnly;

/**
 If this is set to true, the user will be able to pan the chart (Serial only) instead of zooming.
 @version 3.4.8
 */
@property(assign) BOOL pan;

/**
 Opacity of the selection.
 @version 3.4.8
 */
@property(strong) NSNumber * selectionAlpha;

/**
 Specifies if cursor should only mark selected area but not zoom-in after user releases mouse button.
 @version 3.4.8
 */
@property(assign) BOOL selectWithoutZooming;

/**
 If true, the graph will display balloon on next available data point if currently hovered item doesn't have value for this graph.
 @version 3.4.8
 */
@property(assign) BOOL showNextAvailable;

/**
 Specifies whether value balloons are enabled. In case they are not, the balloons might be displayed anyway, when the user rolls-over the column or bullet.
 @version 3.4.8
 */
@property(assign) BOOL valueBalloonsEnabled;

/**
 Specifies if the user can zoom-in the chart. If pan is set to true, zoomable is switched to false automatically.
 @version 3.4.8
 */
@property(assign) BOOL zoomable;

/**
 Read-only. Indicates if currently user is selecting some chart area to zoom-in.
 @version 3.4.8
 */
@property(assign) BOOL zooming;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end