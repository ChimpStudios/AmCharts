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
 */
@property(strong) NSNumber * autoGridCount;

/**
 Axis opacity. Value range is 0 - 1.
 */
@property(strong) NSNumber * axisAlpha;

/**
 Axis color.
 */
@property(strong) NSString * axisColor;

/**
 Thickness of the axis.
 */
@property(strong) NSNumber * axisThickness;

/**
 Read-only. Returns x coordinate of the axis.
 */
@property(strong) NSNumber * axisX;

/**
 Read-only. Returns y coordinate of the axis.
 */
@property(strong) NSNumber * axisY;

/**
 Specifies if axis labels should be bold or not.
 */
@property(strong) NSNumber *boldLabels;

/**
 Color of axis value labels. Will use chart's color if not set.
 */
@property(strong) NSString * color;

/**
 Length of a dash. 0 means line is not dashed.
 */
@property(strong) NSNumber * dashLength;

/**
 Date formats of different periods. Possible period values: fff - milliseconds, ss - seconds, mm - minutes, hh - hours, DD - days, MM - months, WW - weeks, YYYY - years. Check this page for date formatting strings.
 */
@property(strong) NSMutableArray * dateFormats;

/**
 Fill opacity. Every second space between grid lines can be filled with color. Set fillAlpha to a value greater than 0 to see the fills.
 */
@property(strong) NSNumber * fillAlpha;

/**
 Fill color. Every second space between grid lines can be filled with color. Set fillAlpha to a value greater than 0 to see the fills.
 */
@property(strong) NSString * fillColor;

/**
 Size of value labels text. Will use chart's fontSize if not set.
 */
@property(strong) NSNumber * fontSize;

/**
 Opacity of grid lines.
 */
@property(strong) NSNumber * gridAlpha;

/**
 Color of grid lines.
 */
@property(strong) NSString * gridColor;

/**
 Number of grid lines. In case this is value axis, or your categoryAxis parses dates, the number is approximate. The default value is 5. If you set autoGridCount to true, this property is ignored.
 */
@property(strong) NSNumber * gridCount;

/**
 Thickness of grid lines.
 */
@property(strong) NSNumber * gridThickness;

/**
 The array of guides belonging to this axis.
 */
@property(strong) NSMutableArray * guides;

/**
 If autoMargins of a chart is set to true, but you want this axis not to be measured when calculating margin, set ignoreAxisWidth to true.
 */
@property(strong) NSNumber * ignoreAxisWidth;

/**
 Specifies whether values should be placed inside or outside plot area.
 */
@property(strong) NSNumber * inside;

/**
 Frequency at which labels should be placed. Doesn't work for CategoryAxis if parseDates is set to true.
 */
@property(strong) NSNumber * labelFrequency;

/**
 You can use it to adjust position of axes labels. Works both with CategoryAxis and ValueAxis.
 */
@property(strong) NSNumber * labelOffset;

/**
 Rotation angle of a label. Only horizontal axis' values can be rotated. If you set this for vertical axis, the setting will be ignored. Possible values from -90 to 90.
 */
@property(strong) NSNumber * labelRotation;

/**
 Specifies whether axis displays category axis' labels and value axis' values.
 */
@property(strong) NSNumber * labelsEnabled;

/**
 This property is used when calculating grid count (when autoGridCount is true). It specifies minimum cell width required for one span between grid lines.
 */
@property(strong) NSNumber * minHorizontalGap;

/**
 Opacity of minor grid. In order minor to be visible, you should set minorGridEnabled to true.
 */
@property(strong) NSNumber * minorGridAlpha;

/**
 Specifies if minor grid should be displayed.
 */
@property(strong) NSNumber * minorGridEnabled;

/**
 This property is used when calculating grid count (when autoGridCount is true). It specifies minimum cell height required for one span between grid lines.
 */
@property(strong) NSNumber * minVerticalGap;

/**
 The distance of the axis to the plot area, in pixels. Negative values can also be used.
 */
@property(strong) NSNumber * offset;

/**
 Possible values are: "top", "bottom", "left", "right". If axis is vertical, default position is "left". If axis is horizontal, default position is "bottom".
 */
@property(strong) NSString * position;

/**
 Whether to show first axis label or not. This works properly only on ValueAxis. With CategoryAxis it wont work 100%, it depends on the period, zooming, etc. There is no guaranteed way to force category axis to show or hide first label.
 */
@property(strong) NSNumber * showFirstLabel;

/**
 Whether to show last axis label or not. This works properly only on ValueAxis. With CategoryAxis it wont work 100%, it depends on the period, zooming, etc. There is no guaranteed way to force category axis to show or hide last label.
 */
@property(strong) NSNumber * showLastLabel;

/**
 Length of the tick marks.
 */
@property(strong) NSNumber * tickLength;

/**
 Title of the axis.
 */
@property(strong) NSString * title;

/**
 Specifies if title should be bold or not.
 */
@property(strong) NSNumber * titleBold;

/**
 Color of axis title. Will use text color of chart if not set any.
 */
@property(strong) NSString * titleColor;

/**
 Font size of axis title. Will use font size of chart plus two pixels if not set any.
 */
@property(strong) NSNumber * titleFontSize;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end
