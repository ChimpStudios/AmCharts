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
 Color of the category balloon.
 @version 3.4.8
 */
@property(strong) NSString * categoryBalloonColor;

/**
 Array of date format objects. Date format object must have "period" and "format" items. Available periods are: fff - millisecond, ss - second, mm - minute, hh - hour, DD - date, WW - week, MM - month, YYYY - year.
 @version 3.4.8
 */
@property(strong) NSMutableArray * categoryBalloonDateFormats;

/**
 Specifies whether category balloon is enabled.
 @version 3.4.8
 */
@property(assign) BOOL categoryBalloonEnabled;

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
 Possible values: start, middle, mouse.
 @version 3.4.8
 */
@property(strong) NSString * cursorPosition;

/**
 Set this to "false" if you don't want chart cursor to appear in your charts.
 @version 3.4.8
 */
@property(assign) BOOL enabled;

/**
 If this is set to true, the user will be able to pan the chart instead of zooming.
 @version 3.4.8
 */
@property(assign) BOOL pan;

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

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end