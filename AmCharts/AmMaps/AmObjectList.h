// 
//  AmObjectList.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmObjectList : NSObject

/**
 Id or reference to div which will hold ObjectList.
 @version 3.4.8
 */
@property(strong) NSString * container;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end