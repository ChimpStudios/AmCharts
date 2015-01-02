// 
//  AmGraphDataItem.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@class AmSerialDataItem;

@interface AmGraphDataItem : NSObject

/**
 Opacity of the data item.
 */
@property(strong) NSNumber * alpha;

/**
 Bullet type.
 */
@property(strong) NSString * bullet;

/**
 Bullet size.
 */
@property(strong) NSNumber * bulletSize;

/**
 Category value.
 */
@property(strong) NSString * category;

/**
 Color of the data item.
 */
@property(strong) NSString * color;

/**
 Custom bullet (path to file name).
 */
@property(strong) NSString * customBullet;

/**
 Original object from data provider.
 */
@property(strong) NSString * dataContext;

/**
 Description.
 */
@property(strong) NSString * amDescription;

/**
 Array of colors of the data item, used by column and candlestick chart only.
 */
@property(strong) NSMutableArray * fillColors;

/**
 Object which holds percents when recalculateToPercents is set to true.
 */
@property(strong) NSString * percents;

/**
 SerialDataItem of this graphDataItem
 */
@property(strong) AmSerialDataItem * serialDataItem;

/**
 url
 */
@property(strong) NSString * url;

/**
 Object which holds values of the data item (value, open, close, low, high).
 */
@property(strong) NSString * values;

/**
 x coordinate of the data item.
 */
@property(strong) NSNumber * x;

/**
 y coordinate of the data item.
 */
@property(strong) NSNumber * y;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end