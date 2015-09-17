//
//  AmResponsive.h
//  AmChartsLibrary
//
//  Created by Andrew on 2/6/15.
//  Copyright (c) 2015 Chimp Studios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AmResponsive : NSObject

/**
 Specifies whether the Responsibe Plugin should be used.
 http://www.amcharts.com/tutorials/making-charts-responsive/
 */
@property(assign) NSNumber * enabled;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end
