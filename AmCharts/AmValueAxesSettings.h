// 
//  AmValueAxesSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmValueAxesSettings : NSObject

/**
 Specifies whether number for gridCount is specified automatically, according to the axis size.
 @version 3.4.8
 */
@property(assign) BOOL autoGridCount;

/**
 Axis opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * axisAlpha;

/**
 Axis color.
 @version 3.4.8
 */
@property(strong) NSString * axisColor;

/**
 Thickness of the axis.
 @version 3.4.8
 */
@property(strong) NSNumber * axisThickness;

/**
 Label color.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Length of a dash. By default, the grid line is not dashed.
 @version 3.4.8
 */
@property(strong) NSNumber * dashLength;

/**
 Fill opacity. Every second space between grid lines can be filled with color.
 @version 3.4.8
 */
@property(strong) NSNumber * fillAlpha;

/**
 Fill color. Every second space between grid lines can be filled with color. Set fillAlpha to a value greater than 0 to see the fills.
 @version 3.4.8
 */
@property(strong) NSString * fillColor;

/**
 Opacity of grid lines.
 @version 3.4.8
 */
@property(strong) NSNumber * gridAlpha;

/**
 Color of grid lines.
 @version 3.4.8
 */
@property(strong) NSString * gridColor;

/**
 Approximate number of grid lines. autoGridCount should be set to false, otherwise this property will be ignored.
 @version 3.4.8
 */
@property(strong) NSNumber * gridCount;

/**
 Thickness of grid lines.
 @version 3.4.8
 */
@property(strong) NSNumber * gridThickness;

/**
 Specifies whether guide values should be included when calculating min and max of the axis.
 @version 3.4.8
 */
@property(assign) BOOL includeGuidesInMinMax;

/**
 If true, the axis will include hidden graphs when calculating min and max values.
 @version 3.4.8
 */
@property(assign) BOOL includeHidden;

/**
 Specifies whether values should be placed inside or outside plot area. In case you set this to false, you'll have to adjust marginLeft or marginRight in [[PanelsSettings]] in order labels to be visible.
 @version 3.4.8
 */
@property(assign) BOOL inside;

/**
 Specifies whether values on axis can only be integers or both integers and doubles.
 @version 3.4.8
 */
@property(assign) BOOL integersOnly;

/**
 Frequency at which labels should be placed.
 @version 3.4.8
 */
@property(strong) NSNumber * labelFrequency;

/**
 Specifies whether value labels are displayed.
 @version 3.4.8
 */
@property(assign) BOOL labelsEnabled;

/**
 Set to true if value axis is logarithmic, false otherwise.
 @version 3.4.8
 */
@property(assign) BOOL logarithmic;

/**
 The distance of the axis to the plot area, in pixels. Useful if you have more then one axis on the same side.
 @version 3.4.8
 */
@property(strong) NSNumber * offset;

/**
 Position of the value axis. Possible values are "left" and "right".
 @version 3.4.8
 */
@property(strong) NSString * position;

/**
 Set to true if value axis is reversed (smaller values on top), false otherwise.
 @version 3.4.8
 */
@property(assign) BOOL reversed;

/**
 Specifies if first label of value axis should be displayed.
 @version 3.4.8
 */
@property(assign) BOOL showFirstLabel;

/**
 Specifies if last label of value axis should be displayed.
 @version 3.4.8
 */
@property(assign) BOOL showLastLabel;

/**
 Stacking mode of the axis. Possible values are: "none", "regular", "100%", "3d".
 @version 3.4.8
 */
@property(strong) NSString * stackType;

/**
 Tick length.
 @version 3.4.8
 */
@property(strong) NSNumber * tickLength;

/**
 Unit which will be added to the value label.
 @version 3.4.8
 */
@property(strong) NSString * unit;

/**
 Position of the unit. Possible values are "left" or "right".
 @version 3.4.8
 */
@property(strong) NSString * unitPosition;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end