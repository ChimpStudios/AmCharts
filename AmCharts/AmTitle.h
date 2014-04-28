// 
//  AmTitle.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmTitle : NSObject

/**
 Opacity of a title.
 @version 3.4.8
 */
@property(strong) NSNumber * alpha;

/**
 Specifies if title should be bold or not.
 @version 3.4.8
 */
@property(assign) BOOL bold;

/**
 Text color of a title.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Unique id of a Title. You don't need to set it, unless you want to.
 @version 3.4.8
 */
@property(strong) NSString * uid;

/**
 Text size of a title.
 @version 3.4.8
 */
@property(strong) NSNumber * size;

/**
 Text of a title.
 @version 3.4.8
 */
@property(strong) NSString * text;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end