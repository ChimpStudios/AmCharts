// 
//  AmLabel.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmLabel : NSObject

/**
 
 @version 3.4.8
 */
@property(strong) NSString * align;

/**
 
 @version 3.4.8
 */
@property(strong) NSNumber * alpha;

/**
 Specifies if label is bold or not.
 @version 3.4.8
 */
@property(assign) BOOL bold;

/**
 Color of a label.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Unique id of a Label. You don't need to set it, unless you want to.
 @version 3.4.8
 */
@property(strong) NSString * uid;

/**
 Rotation angle.
 @version 3.4.8
 */
@property(strong) NSNumber * rotation;

/**
 Text size.
 @version 3.4.8
 */
@property(strong) NSNumber * size;

/**
 Text of a label.
 @version 3.4.8
 */
@property(strong) NSString * text;

/**
 URL which will be access if user clicks on a label.
 @version 3.4.8
 */
@property(strong) NSString * url;

/**
 X position of a label.
 @version 3.4.8
 */
@property(strong) NSString * x;

/**
 y position of a label.
 @version 3.4.8
 */
@property(strong) NSString * y;

@end