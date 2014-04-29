// 
//  AmGaugeArrow.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@class AmGaugeAxis;

@interface AmGaugeArrow : NSObject

/**
 Opacity of an arrow.
 */
@property(strong) NSNumber * alpha;

/**
 Axis of the arrow. You can use reference to the axis or id of the axis. If you don't set any axis, the first axis of a chart will be used.
 */
@property(strong) AmGaugeAxis * axis;

/**
 Opacity of arrow border.
 */
@property(strong) NSNumber * borderAlpha;

/**
 In case you need the arrow to rotate only clock-wise, set this property to true.
 */
@property(assign) BOOL clockWiseOnly;

/**
 Color of an arrow.
 */
@property(strong) NSString * color;

/**
 Inner radius of an arrow.
 */
@property(strong) NSString * innerRadius;

/**
 Opacity of a nail, holding the arrow.
 */
@property(strong) NSNumber * nailAlpha;

/**
 Opacity of nail border.
 */
@property(strong) NSNumber * nailBorderAlpha;

/**
 Thickness of nail border.
 */
@property(strong) NSNumber * nailBorderThickness;

/**
 Radius of a nail, holding the arrow.
 */
@property(strong) NSNumber * nailRadius;

/**
 Radius of an arrow.
 */
@property(strong) NSString * radius;

/**
 Width of arrow root.
 */
@property(strong) NSNumber * startWidth;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end