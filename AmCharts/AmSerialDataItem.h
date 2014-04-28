// 
//  AmSerialDataItem.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmSerialDataItem : NSObject

/**
 You can access each GraphDataItem using this object. The data structure is: graphDataItem = serialDataItem.axes[axisId].graphs[graphId].
 @version 3.4.8
 */
@property(strong) NSString * axes;

/**
 category value. String if parseDates is false, Date if true.
 @version 3.4.8
 */
@property(strong) NSString * category;

/**
 Reference to original data object, from dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * dataContext;

/**
 Time stamp of a series date. Avalable only if parseDates property of CategoryAxis is set to true.
 @version 3.4.8
 */
@property(strong) NSNumber * time;

/**
 Coordinate (horizontal or vertical, depends on chart's rotate property) of the series.
 @version 3.4.8
 */
@property(strong) NSNumber * x;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end