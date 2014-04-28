// 
//  AmAxisBase.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmAxisBase : NSObject

/**
 Specifies whether number of gridCount is specified automatically, acoarding to the axis size.
 @version 3.4.8
 */
@property(assign) BOOL autoGridCount;

/**
 Axis opacity. Value range is 0 - 1.
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
 Read-only. Returns x coordinate of the axis.
 @version 3.4.8
 */
@property(strong) NSNumber * axisX;

/**
 Read-only. Returns y coordinate of the axis.
 @version 3.4.8
 */
@property(strong) NSNumber * axisY;

/**
 Color of axis value labels. Will use chart's color if not set.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Length of a dash. 0 means line is not dashed.
 @version 3.4.8
 */
@property(strong) NSNumber * dashLength;

/**
 Fill opacity. Every second space between grid lines can be filled with color. Set fillAlpha to a value greater than 0 to see the fills.
 @version 3.4.8
 */
@property(strong) NSNumber * fillAlpha;

/**
 Fill color. Every second space between grid lines can be filled with color. Set fillAlpha to a value greater than 0 to see the fills.
 @version 3.4.8
 */
@property(strong) NSString * fillColor;

/**
 Size of value labels text. Will use chart's fontSize if not set.
 @version 3.4.8
 */
@property(strong) NSNumber * fontSize;

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
 Number of grid lines. In case this is value axis, or your categoryAxis parses dates, the number is approximate. The default value is 5. If you set autoGridCount to true, this property is ignored.
 @version 3.4.8
 */
@property(strong) NSNumber * gridCount;

/**
 Thickness of grid lines.
 @version 3.4.8
 */
@property(strong) NSNumber * gridThickness;

/**
 The array of guides belonging to this axis.
 @version 3.4.8
 */
@property(strong) NSMutableArray * guides;

/**
 If autoMargins of a chart is set to true, but you want this axis not to be measured when calculating margin, set ignoreAxisWidth to true.
 @version 3.4.8
 */
@property(assign) BOOL ignoreAxisWidth;

/**
 Specifies whether values should be placed inside or outside plot area.
 @version 3.4.8
 */
@property(assign) BOOL inside;

/**
 Frequency at which labels should be placed. Doesn't work for CategoryAxis if parseDates is set to true.
 @version 3.4.8
 */
@property(strong) NSNumber * labelFrequency;

/**
 Rotation angle of a label. Only horizontal axis' values can be rotated. If you set this for vertical axis, the setting will be ignored. Possible values from -90 to 90.
 @version 3.4.8
 */
@property(strong) NSNumber * labelRotation;

/**
 Specifies whether axis displays category axis' labels and value axis' values.
 @version 3.4.8
 */
@property(assign) BOOL labelsEnabled;

/**
 This property is used when calculating grid count (when autoGridCount is true). It specifies minimum cell width required for one span between grid lines.
 @version 3.4.8
 */
@property(strong) NSNumber * minHorizontalGap;

/**
 Opacity of minor grid. In order minor to be visible, you should set minorGridEnabled to true.
 @version 3.4.8
 */
@property(strong) NSNumber * minorGridAlpha;

/**
 Specifies if minor grid should be displayed.
 @version 3.4.8
 */
@property(assign) BOOL minorGridEnabled;

/**
 This property is used when calculating grid count (when autoGridCount is true). It specifies minimum cell height required for one span between grid lines.
 @version 3.4.8
 */
@property(strong) NSNumber * minVerticalGap;

/**
 The distance of the axis to the plot area, in pixels. Negative values can also be used.
 @version 3.4.8
 */
@property(strong) NSNumber * offset;

/**
 Possible values are: "top", "bottom", "left", "right". If axis is vertical, default position is "left". If axis is horizontal, default position is "bottom".
 @version 3.4.8
 */
@property(strong) NSString * position;

/**
 Whether to show first axis label or not. This works properly only on ValueAxis. With CategoryAxis it wont work 100%, it depends on the period, zooming, etc. There is no guaranteed way to force category axis to show or hide first label.
 @version 3.4.8
 */
@property(assign) BOOL showFirstLabel;

/**
 Whether to show last axis label or not. This works properly only on ValueAxis. With CategoryAxis it wont work 100%, it depends on the period, zooming, etc. There is no guaranteed way to force category axis to show or hide last label.
 @version 3.4.8
 */
@property(assign) BOOL showLastLabel;

/**
 Length of the tick marks.
 @version 3.4.8
 */
@property(strong) NSNumber * tickLength;

/**
 Title of the axis.
 @version 3.4.8
 */
@property(strong) NSString * title;

/**
 Specifies if title should be bold or not.
 @version 3.4.8
 */
@property(assign) BOOL titleBold;

/**
 Color of axis title. Will use text color of chart if not set any.
 @version 3.4.8
 */
@property(strong) NSString * titleColor;

/**
 Font size of axis title. Will use font size of chart plus two pixels if not set any.
 @version 3.4.8
 */
@property(strong) NSNumber * titleFontSize;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end