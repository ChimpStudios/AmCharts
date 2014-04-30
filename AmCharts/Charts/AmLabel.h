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
 
 */
@property(strong) NSString * align;

/**
 
 */
@property(strong) NSNumber * alpha;

/**
 Specifies if label is bold or not.
 */
@property(assign) BOOL bold;

/**
 Color of a label.
 */
@property(strong) NSString * color;

/**
 Unique id of a Label. You don't need to set it, unless you want to.
 */
@property(strong) NSString * uid;

/**
 Rotation angle.
 */
@property(strong) NSNumber * rotation;

/**
 Text size.
 */
@property(strong) NSNumber * size;

/**
 Text of a label.
 */
@property(strong) NSString * text;

/**
 URL which will be access if user clicks on a label.
 */
@property(strong) NSString * url;

/**
 X position of a label.
 */
@property(strong) NSString * x;

/**
 y position of a label.
 */
@property(strong) NSString * y;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end