// 
//  AmStockEvent.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@class AmStockGraph;

@interface AmStockEvent : NSObject

/**
 Opacity of bullet background.
 @version 3.4.8
 */
@property(strong) NSNumber * backgroundAlpha;

/**
 Color of bullet background.
 @version 3.4.8
 */
@property(strong) NSString * backgroundColor;

/**
 Opacity of bullet border.
 @version 3.4.8
 */
@property(strong) NSNumber * borderAlpha;

/**
 Bullet border color.
 @version 3.4.8
 */
@property(strong) NSString * borderColor;

/**
 The color of the event text.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Date of an event. Can be a string of date (using chart.dataDateFormat format) or Date object.
 @version 3.4.8
 */
@property(strong) NSDate * date;

/**
 A description that will be shown in a balloon when user rolls over mouse cursor over event icon.
 @version 3.4.8
 */
@property(strong) NSString * description;

/**
 graph on which event will be displayed. You can use a reference to the stock graph object or id of the graph.
 @version 3.4.8
 */
@property(strong) AmStockGraph * graph;

/**
 Roll-over background color.
 @version 3.4.8
 */
@property(strong) NSString * rollOverColor;

/**
 Specifies if the event should be displayed on category axis
 @version 3.4.8
 */
@property(assign) BOOL showOnAxis;

/**
 Letter which will be displayed on the event. Not all types can display letters. "text" type can display longer texts.
 @version 3.4.8
 */
@property(strong) NSString * text;

/**
 Type of bullet. Possible values are: "flag", "sign", "pin", "triangleUp", "triangleDown", "triangleLeft", "triangleRight", "text", "arrowUp", "arrowDown".
 @version 3.4.8
 */
@property(strong) NSString * type;

/**
 A URL to go to when user clicks the event.
 @version 3.4.8
 */
@property(strong) NSString * url;

/**
 target of url, "_blank" for example.
 @version 3.4.8
 */
@property(strong) NSString * urlTarget;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end