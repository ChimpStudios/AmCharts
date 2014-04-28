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
 @version 3.4.8
 */
@property(strong) NSNumber * alpha;

/**
 Color of a slice.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Original object from data provider.
 @version 3.4.8
 */
@property(strong) NSString * dataContext;

/**
 Slice description.
 @version 3.4.8
 */
@property(strong) NSString * description;

/**
 Specifies whether the slice is hidden
 @version 3.4.8
 */
@property(assign) BOOL hidden;

/**
 Percent value of a slice.
 @version 3.4.8
 */
@property(strong) NSNumber * percents;

/**
 Specifies whether the slice is pulled or not.
 @version 3.4.8
 */
@property(assign) BOOL pulled;

/**
 Slice title
 @version 3.4.8
 */
@property(strong) NSString * title;

/**
 Url of a slice
 @version 3.4.8
 */
@property(strong) NSString * url;

/**
 Value of a slice
 @version 3.4.8
 */
@property(strong) NSNumber * value;

/**
 specifies whether this slice has a legend entry
 @version 3.4.8
 */
@property(assign) BOOL visibleInLegend;

@end