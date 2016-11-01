// 
//  AmChartCursor.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@class AmValueAxis;

@interface AmChartCursor : NSObject

/**
 If you set adjustment to -1, the balloon will be shown near previous, if you set it to 1 - near next data point.
 */
@property(strong) NSNumber * adjustment;

/**
 Duration of animation of a line, in seconds.
 */
@property(strong) NSNumber * animationDuration;

/**
 Specifies if cursor should arrange balloons so they won't overlap. If chart is rotated, it might be good idea to turn this off.
 */
@property(strong) NSNumber * avoidBalloonOverlapping;

/**
 defines if the balloon should be shown above the datapoint or sideways
 */
@property(strong) NSString * balloonPointerOrientation;

/**
 Specifies if bullet for each graph will follow the cursor.
 */
@property(strong) NSNumber * bulletsEnabled;

/**
 Size of bullets, following the cursor.
 */
@property(strong) NSNumber * bulletSize;

/**
 Opacity of the category balloon.
 */
@property(strong) NSNumber * categoryBalloonAlpha;

/**
 Color of the category balloon. cursorColor is used if not set.
 */
@property(strong) NSString * categoryBalloonColor;

/**
 Category balloon date format (used only if category axis parses dates). Check this page for instructions on how to format dates.
 */
@property(strong) NSString * categoryBalloonDateFormat;

/**
 Specifies whether category balloon is enabled.
 */
@property(strong) NSNumber * categoryBalloonEnabled;

/**
 Allows formatting any category balloon text you want. categoryBalloonFunction should return a string which will be displayed in a balloon. When categoryBalloonFunction is called, category value (or date) is passed as an argument.
 */
@property(assign) id categoryBalloonFunction;

/**
 Text color.
 */
@property(strong) NSString * color;

/**
 Opacity of the cursor line.
 */
@property(strong) NSNumber * cursorAlpha;

/**
 Color of the cursor line.
 */
@property(strong) NSString * cursorColor;

/**
 Specifies where the cursor line should be placed - on the beginning of the period (day, hour, etc) or in the middle (only when parseDates property of categoryAxis is set to true). If you want the cursor to follow mouse and not to glue to the nearest data point, set "mouse" here. Possible values are: start, middle, mouse.
 */
@property(strong) NSString * cursorPosition;

/**
 Specifies whether cursor is enabled.
 */
@property(strong) NSNumber * enabled;

/**
 If set to true, instead of a cursor line user will see a fill which width will always be equal to the width of one data item. We'd recommend setting cusrsorAlpha to 0.1 or some other small number if using this feature.
 */
@property(strong) NSNumber * fullWidth;

/**
 If you make graph's bullets invisible by setting their opacity to 0 and will set graphBulletAlpha to 1, the bullets will only appear at the cursor's position.
 */
@property(strong) NSNumber * graphBulletAlpha;

/**
 Size of a graph's bullet (if available) at the cursor position. If you don't want the bullet to change it's size, set this property to 1.
 */
@property(strong) NSNumber * graphBulletSize;

/**
 If this is set to true, only one balloon at a time will be displayed. Note, this is quite CPU consuming.
 */
@property(strong) NSNumber * oneBalloonOnly;

/**
 If this is set to true, the user will be able to pan the chart (Serial only) instead of zooming.
 */
@property(strong) NSNumber * pan;

/**
 Opacity of the selection.
 */
@property(strong) NSNumber * selectionAlpha;

/**
 Specifies if cursor should only mark selected area but not zoom-in after user releases mouse button.
 */
@property(strong) NSNumber * selectWithoutZooming;

/**
 If true, the graph will display balloon on next available data point if currently hovered item doesn't have value for this graph.
 */
@property(strong) NSNumber * showNextAvailable;

/**
 Specifies whether value balloons are enabled. In case they are not, the balloons might be displayed anyway, when the user rolls-over the column or bullet.
 */
@property(strong) NSNumber * valueBalloonsEnabled;

/**
 Opacity of value line. Will use cursorAlpha value if not set.
 */
@property(strong) NSNumber * valueLineAlpha;

/**
 Axis of value line. If you set valueLineBalloonEnabled to true, but you have more than one axis, you can use this property to indicate which axis should display balloon.
 */
@property(strong) AmValueAxis * valueLineAxis;

/**
 Specifies if value balloon next to value axis labels should be displayed. If you have more than one axis, set valueLineAxis property to indicate which axis should display the balloon.
 */
@property(strong) NSNumber * valueLineBalloonEnabled;

/**
 Specifies if cursor of Serial chart should display horizontal (or vertical if chart is rotated) line. This line might help users to compare distant values of a chart. You can also enable value balloon on this line by setting valueLineAxis property of ChartCursor.
 */
@property(strong) NSNumber * valueLineEnabled;

/**
 Specifies if the user can zoom-in the chart. If pan is set to true, zoomable is switched to false automatically.
 */
@property(strong) NSNumber * zoomable;

/**
 Read-only. Indicates if currently user is selecting some chart area to zoom-in.
 */
@property(strong) NSNumber * zooming;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end
