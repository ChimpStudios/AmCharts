// 
//  AmChartCursorSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmChartCursorSettings : NSObject

/**
 defines if the balloon should be shown above the datapoint or sideways
 */
@property(strong) NSString * balloonPointerOrientation;

/**
 Specifies if bullet for each graph will follow the cursor.
 */
@property(assign) BOOL bulletsEnabled;

/**
 Size of bullets, following the cursor.
 */
@property(strong) NSNumber * bulletSize;

/**
 Opacity of the category balloon.
 */
@property(strong) NSNumber * categoryBalloonAlpha;

/**
 Color of the category balloon.
 */
@property(strong) NSString * categoryBalloonColor;

/**
 Array of date format objects. Date format object must have "period" and "format" items. Available periods are: fff - millisecond, ss - second, mm - minute, hh - hour, DD - date, WW - week, MM - month, YYYY - year.
 */
@property(strong) NSMutableArray * categoryBalloonDateFormats;

/**
 Specifies whether category balloon is enabled.
 */
@property(assign) BOOL categoryBalloonEnabled;

/**
 Opacity of the cursor line.
 */
@property(strong) NSNumber * cursorAlpha;

/**
 Color of the cursor line.
 */
@property(strong) NSString * cursorColor;

/**
 Possible values: start, middle, mouse.
 */
@property(strong) NSString * cursorPosition;

/**
 Set this to "false" if you don't want chart cursor to appear in your charts.
 */
@property(assign) BOOL enabled;

/**
 Size of a graph's bullet (if available) at the cursor position. If you don't want the bullet to change it's size, set this property to 1.
 */
@property(strong) NSNumber * graphBulletSize;

/**
 If set to true, instead of a cursor line user will see a fill which width will always be equal to the width of one data item. We'd recommend setting cusrsorAlpha to 0.1 or some other small number if using this feature.
 */
@property(assign) BOOL fullWidth;

/**
 If this is set to true, the user will be able to pan the chart instead of zooming.
 */
@property(assign) BOOL pan;

/**
 Specifies whether value balloons are enabled. In case they are not, the balloons might be displayed anyway, when the user rolls-over the column or bullet.
 */
@property(assign) BOOL valueBalloonsEnabled;

/**
 Opacity of value line. Will use cursorAlpha value if not set.
 */
@property(strong) NSNumber * valueLineAlpha;

/**
 Specifies if value balloon next to value axis labels should be displayed. If you have more than one axis, set valueLineAxis property to indicate which axis should display the balloon.
 */
@property(assign) BOOL valueLineBalloonEnabled;

/**
 Specifies if cursor of Serial chart should display horizontal (or vertical if chart is rotated) line. This line might help users to compare distant values of a chart. You can also enable value balloon on this line by setting valueLineAxis property of ChartCursor.
 */
@property(assign) BOOL valueLineEnabled;

/**
 Specifies if the user can zoom-in the chart. If pan is set to true, zoomable is switched to false automatically.
 */
@property(assign) BOOL zoomable;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end