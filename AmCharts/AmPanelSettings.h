// 
//  AmPanelSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmPanelSettings : NSObject

/**
 The angle of the 3D part of plot area. This creates a 3D effect (if the "depth3D" is &gt; 0).
 @version 3.4.8
 */
@property(strong) NSNumber * angle;

/**
 Opacity of panel background. Possible values are 1 and 0. Values like 0.5 will not make it half-transparent.
 @version 3.4.8
 */
@property(strong) NSNumber * backgroundAlpha;

/**
 Background color of panels. Set backgroundAlpha to &gt; 0 value in order to make background visible.
 @version 3.4.8
 */
@property(strong) NSString * backgroundColor;

/**
 The gap in pixels between two columns of the same category.
 @version 3.4.8
 */
@property(strong) NSNumber * columnSpacing;

/**
 Relative width of columns. Valid values 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * columnWidth;

/**
 Position of amCharts link (free version only). Possible values are: top-left. top-right, bottom-left, bottom-right<br>
    You can adjust the position of amcharts link so that it would not overlap with contents of your chart.
 @version 3.4.8
 */
@property(strong) NSString * creditsPosition;

/**
 Separator of decimal values.
 @version 3.4.8
 */
@property(strong) NSString * decimalSeparator;

/**
 The depth of the 3D part of plot area. This creates a 3D effect (if the "angle" is &gt; 0).
 @version 3.4.8
 */
@property(strong) NSNumber * depth3D;

/**
 Font family.
 @version 3.4.8
 */
@property(strong) NSString * fontFamily;

/**
 Font size.
 @version 3.4.8
 */
@property(strong) NSString * fontSize;

/**
 Number of pixels between the container's bottom border and plot area.
 @version 3.4.8
 */
@property(strong) NSNumber * marginBottom;

/**
 Number of pixels between the container's left border and plot area. If your left valueAxis values ar not placed inside the plot area, you should set marginLeft to 80 or some close value.
 @version 3.4.8
 */
@property(strong) NSNumber * marginLeft;

/**
 Number of pixels between the container's left border and plot area. If your right valueAxis values ar not placed inside the plot area, you should set marginRight to 80 or some close value.
 @version 3.4.8
 */
@property(strong) NSNumber * marginRight;

/**
 Number of pixels between the container's top border and plot area.
 @version 3.4.8
 */
@property(strong) NSNumber * marginTop;

/**
 Gap between panels.
 @version 3.4.8
 */
@property(strong) NSNumber * panelSpacing;

/**
 This setting affects touch-screen devices only. If a chart is on a page, and panEventsEnabled are set to true, the page won't move if the user touches the chart first. If a chart is big enough and occupies all the screen of your touch device, the user won’t be able to move the page at all. That's why the default value is "false". If you think that selecting or or panning the chart is a primary purpose of your chart users, you should set panEventsEnabled to true.
 @version 3.4.8
 */
@property(assign) BOOL panEventsEnabled;

/**
 Precision of percent values. 
 @version 3.4.8
 */
@property(strong) NSNumber * percentPrecision;

/**
 The opacity of plot area's border.
 @version 3.4.8
 */
@property(strong) NSNumber * plotAreaBorderAlpha;

/**
 The color of the plot area's border.
 @version 3.4.8
 */
@property(strong) NSString * plotAreaBorderColor;

/**
 Opacity of plot area fill.
 @version 3.4.8
 */
@property(strong) NSNumber * plotAreaFillAlphas;

/**
 Specifies the colors used to tint the background gradient fill of the plot area.
 @version 3.4.8
 */
@property(strong) NSMutableArray * plotAreaFillColors;

/**
 Precision of values. -1 means values will not be rounded and shown as they are.
 @version 3.4.8
 */
@property(strong) NSNumber * precision;

/**
 Prefixes which are used to make big numbers shorter: 2M instead of 2000000, etc. Prefixes are used on value axes and in the legend. To enable prefixes, set usePrefixes property to true.
 @version 3.4.8
 */
@property(strong) NSMutableArray * prefixesOfBigNumbers;

/**
 Prefixes which are used to make small numbers shorter: 2μ instead of 0.000002, etc. Prefixes are used on value axes and in the legend. To enable prefixes, set usePrefixes property to true.
 @version 3.4.8
 */
@property(strong) NSMutableArray * prefixesOfSmallNumbers;

/**
 Specifies when values should be recalculated to percents. Possible values are: "never", "always", "whenComparing".
 @version 3.4.8
 */
@property(strong) NSString * recalculateToPercents;

/**
 Specifies whether the animation should be sequenced or all objects should appear at once.
 @version 3.4.8
 */
@property(assign) BOOL sequencedAnimation;

/**
 The initial opacity of the column/line. If you set startDuration to a value higher than 0, the columns/lines will fade in from startAlpha.
 @version 3.4.8
 */
@property(strong) NSNumber * startAlpha;

/**
 Duration of the animation, in seconds.
 @version 3.4.8
 */
@property(strong) NSNumber * startDuration;

/**
 Possible values are: easeOutSine, easeInSine, elastic, bounce
 @version 3.4.8
 */
@property(strong) NSString * startEffect;

/**
 Separator of thousand values.
 @version 3.4.8
 */
@property(strong) NSString * thousandsSeparator;

/**
 If true, prefixes will be used for big and small numbers.
 @version 3.4.8
 */
@property(assign) BOOL usePrefixes;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end