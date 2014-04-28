// 
//  AmFunnelChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmSlicedChart.h"


@interface AmFunnelChart : AmSlicedChart

/**
 Balloon text. The following tags can be used: [[value]], [[title]], [[percents]], [[description]]  or any other field name from your data provider. HTML tags can also be used.
 @version 3.4.8
 */
@property(strong) NSString * balloonText;

/**
 Width of a base (first slice) of a chart. "100%" means it will occupy all available space.
 @version 3.4.8
 */
@property(strong) NSString * baseWidth;

/**
 Specifies where labels should be placed. Allowed values are left / center / right. If you set left or right, you should increase left or right margin in order labels to be visible.
 @version 3.4.8
 */
@property(strong) NSString * labelPosition;

/**
 Label text. The following tags can be used: [[value]], [[title]], [[percents]], [[description]] or any other field name from your data provider.
 @version 3.4.8
 */
@property(strong) NSString * labelText;

/**
 Height of a funnel neck. If default value, zero is used, the funnel won't have neck at all, which will make it look like pyramid.
 @version 3.4.8
 */
@property(strong) NSString * neckHeight;

/**
 Width of a funnel neck. If default value, zero is used, the funnel won't have neck at all, which will make it look like pyramid.
 @version 3.4.8
 */
@property(strong) NSString * neckWidth;

/**
 Specifies the distance by which slice should be pulled when user clicks on it.
 @version 3.4.8
 */
@property(strong) NSString * pullDistance;

/**
 If rotate is set to true, the funnel will be rotated and will became a pyramid.
 @version 3.4.8
 */
@property(assign) BOOL rotate;

/**
 Initial x coordinate of slices. They will animate to the final x position from this one.
 @version 3.4.8
 */
@property(strong) NSNumber * startX;

/**
 Initial y coordinate of slices. They will animate to the final y position from this one.
 @version 3.4.8
 */
@property(strong) NSNumber * startY;

/**
 By default, the height of a slice represents it's value. However you might want the area of a slice to represent value - set this property to "area" then.
 @version 3.4.8
 */
@property(strong) NSString * valueRepresents;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end