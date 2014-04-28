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
 @version 3.4.8
 */
@property(strong) NSNumber * alpha<div class="copy-url label label-info"><i class="icon-share icon-white" title="Link to this"></i></div>;

/**
 Bullet type.
 @version 3.4.8
 */
@property(strong) NSString * bullet;

/**
 Bullet size.
 @version 3.4.8
 */
@property(strong) NSNumber * bulletSize;

/**
 Category value.
 @version 3.4.8
 */
@property(strong) NSString * category;

/**
 Color of the data item.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Custom bullet (path to file name).
 @version 3.4.8
 */
@property(strong) NSString * customBullet;

/**
 Original object from data provider.
 @version 3.4.8
 */
@property(strong) NSString * dataContext;

/**
 Description.
 @version 3.4.8
 */
@property(strong) NSString * description;

/**
 Array of colors of the data item, used by column and candlestick chart only.
 @version 3.4.8
 */
@property(strong) NSMutableArray * fillColors;

/**
 Object which holds percents when recalculateToPercents is set to true.
 @version 3.4.8
 */
@property(strong) NSString * percents;

/**
 SerialDataItem of this graphDataItem
 @version 3.4.8
 */
@property(strong) AmSerialDataItem * serialDataItem;

/**
 url
 @version 3.4.8
 */
@property(strong) NSString * url;

/**
 Object which holds values of the data item (value, open, close, low, high).
 @version 3.4.8
 */
@property(strong) NSString * values;

/**
 x coordinate of the data item.
 @version 3.4.8
 */
@property(strong) NSNumber * x;

/**
 y coordinate of the data item.
 @version 3.4.8
 */
@property(strong) NSNumber * y;

@end