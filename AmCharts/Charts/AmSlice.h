// 
//  AmSlice.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmSlice : NSObject

/**
 Opacity of a slice.
 */
@property(strong) NSNumber * alpha;

/**
 Color of a slice.
 */
@property(strong) NSString * color;

/**
 Original object from data provider.
 */
@property(strong) NSString * dataContext;

/**
 Slice description.
 */
@property(strong) NSString * amDescription;

/**
 Specifies whether the slice is hidden
 */
@property(assign) BOOL hidden;

/**
 Percent value of a slice.
 */
@property(strong) NSNumber * percents;

/**
 Specifies whether the slice is pulled or not.
 */
@property(assign) BOOL pulled;

/**
 Slice title
 */
@property(strong) NSString * title;

/**
 Url of a slice
 */
@property(strong) NSString * url;

/**
 Value of a slice
 */
@property(strong) NSNumber * value;

/**
 specifies whether this slice has a legend entry
 */
@property(assign) BOOL visibleInLegend;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end