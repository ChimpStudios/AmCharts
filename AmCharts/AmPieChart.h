// 
//  AmPieChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmSlicedChart.h"


@interface AmPieChart : AmSlicedChart

/**
 Pie lean angle (for 3D effect). Valid range is 0 - 90.
 */
@property(strong) NSNumber * angle;

/**
 Balloon text. The following tags can be used: [[value]], [[title]], [[percents]], [[description]]  or any other field name from your data provider. HTML tags can also be used.
 */
@property(strong) NSString * balloonText;

/**
 Depth of the pie (for 3D effect).
 */
@property(strong) NSNumber * depth3D;

/**
 Inner radius of the pie, in pixels or percents.
 */
@property(strong) NSString * innerRadius;

/**
 The distance between the label and the slice, in pixels. You can use negative values to put the label on the slice.
 */
@property(strong) NSNumber * labelRadius;

/**
 Name of the field in dataProvider which specifies the length of a tick. Note, the chart will not try to arrange labels automatically if this property is set.
 */
@property(strong) NSString * labelRadiusField;

/**
 Label text. The following tags can be used: [[value]], [[title]], [[percents]], [[description]] or any other field name from your data provider.
 */
@property(strong) NSString * labelText;

/**
 Minimum radius of the pie, in pixels.
 */
@property(strong) NSNumber * minRadius;

/**
 Opacity of the slices. You can set the opacity of individual slice too.
 */
@property(strong) NSNumber * pieAlpha;

/**
 You can set fixed position of a pie center, in pixels or in percents.
 */
@property(strong) NSString * pieX;

/**
 You can set fixed position of a pie center, in pixels or in percents.
 */
@property(strong) NSString * pieY;

/**
 Pull out radius, in pixels or percents
 */
@property(strong) NSString * pullOutRadius;

/**
 Radius of a pie, in pixels or percents. By default, radius is calculated automatically.
 */
@property(strong) NSString * radius;

/**
 Angle of the first slice, in degrees. This will work properly only if "depth3D" is set to 0. If "depth3D" is greater than 0, then there can be two angles only: 90 and 270. Value range is 0-360.
 */
@property(strong) NSNumber * startAngle;

/**
 Radius of the positions from which the slices will fly in.
 */
@property(strong) NSString * startRadius;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end