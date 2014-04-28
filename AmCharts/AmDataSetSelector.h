// 
//  AmDataSetSelector.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmDataSetSelector : NSObject

/**
 Text displayed in the "compare to" combobox (when position is "top" or "bottom").
 @version 3.4.8
 */
@property(strong) NSString * comboBoxSelectText;

/**
 Text displayed near "compare to" list.
 @version 3.4.8
 */
@property(strong) NSString * compareText;

/**
 The maximum height of the Compare to field in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * listHeight;

/**
 Possible values: "right", "left", "top", "bottom". "top" and "bottom" positions has a limitation - only one data set can be selected for comparing.
 @version 3.4.8
 */
@property(strong) NSString * position;

/**
 Text displayed near "Select" dropDown.
 @version 3.4.8
 */
@property(strong) NSString * selectText;

/**
 Width of a Data set selector, when position is "left" or "right".
 @version 3.4.8
 */
@property(strong) NSNumber * width;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end