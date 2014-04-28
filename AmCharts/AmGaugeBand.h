// 
//  AmGaugeBand.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmGaugeBand : NSObject

/**
 Opacity of band fill. Will use axis.bandAlpha if not set any.
 @version 3.4.8
 */
@property(strong) NSNumber * alpha;

/**
 Color of a band.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 End value of a fill.
 @version 3.4.8
 */
@property(strong) NSNumber * endValue;

/**
 Inner radius of a band. If not set any, the band will end with the end of minor ticks. Set 0 if you want the band to be drawn to the axis center.
 @version 3.4.8
 */
@property(strong) NSString * innerRadius;

/**
 Band radius. If not set any, the band will start with the axis outline.
 @version 3.4.8
 */
@property(strong) NSString * radius;

/**
 Start value of a fill.
 @version 3.4.8
 */
@property(strong) NSNumber * startValue;

@end