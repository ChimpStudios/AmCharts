// 
//  AmLegend.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmLegend : NSObject

/**
 Alignment of legend entries. Possible values are: "left", "center", "right".
 @version 3.4.8
 */
@property(strong) NSString * align;

/**
 Used if chart is Serial or XY. In case true, margins of the legend are adjusted and made equal to chart's margins.
 @version 3.4.8
 */
@property(assign) BOOL autoMargins;

/**
 Opacity of legend's background. Value range is 0 - 1
 @version 3.4.8
 */
@property(strong) NSNumber * backgroundAlpha;

/**
 Background color. You should set backgroundAlpha to &gt;0 vallue in order background to be visible.
 @version 3.4.8
 */
@property(strong) NSString * backgroundColor;

/**
 Opacity of chart's border. Value range is 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * borderAlpha;

/**
 Color of legend's border. You should set borderAlpha &gt;0 in order border to be visible.
 @version 3.4.8
 */
@property(strong) NSString * borderColor;

/**
 In case legend position is set to "absolute", you can set distance from bottom of the chart, in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * bottom;

/**
 Text color.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 You can pass array of objects with title, color, markerType values, for example: [{title: "One", color: "#3366CC"},{title: "Two", color: "#FFCC33"}]<br>

 @version 3.4.8
 */
@property(strong) NSMutableArray * data;

/**
 You can set id of a div or a reference to div object in case you want the legend to be placed in a separate container.
 @version 3.4.8
 */
@property(strong) NSString * divId;

/**
 Specifies if each of legend entry should be equal to the most wide entry. Won't look good if legend has more than one line.
 @version 3.4.8
 */
@property(assign) BOOL equalWidths;

/**
 Font size.
 @version 3.4.8
 */
@property(strong) NSNumber * fontSize;

/**
 Horizontal space between legend item and left/right border.
 @version 3.4.8
 */
@property(strong) NSNumber * horizontalGap;

/**
 The text which will be displayed in the legend. Tag [[title]] will be replaced with the title of the graph.
 @version 3.4.8
 */
@property(strong) NSString * labelText;

/**
 In case legend position is set to "absolute", you can set distance from left side of the chart, in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * left;

/**
 Bottom margin.
 @version 3.4.8
 */
@property(strong) NSNumber * marginBottom;

/**
 Left margin. This property will be ignored if chart is Serial or XY and autoMargins property of the legend is true (default).
 @version 3.4.8
 */
@property(strong) NSNumber * marginLeft;

/**
 Right margin. This property will be ignored if chart is Serial or XY and autoMargins property of the legend is true (default).
 @version 3.4.8
 */
@property(strong) NSNumber * marginRight;

/**
 Top margin.
 @version 3.4.8
 */
@property(strong) NSNumber * marginTop;

/**
 Marker border opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * markerBorderAlpha;

/**
 Marker border color. If not set, will use the same color as marker.
 @version 3.4.8
 */
@property(strong) NSString * markerBorderColor;

/**
 Thickness of the legend border. The default value (0) means the line will be a "hairline" (1 px). In case marker type is line, this style will be used for line thickness.
 @version 3.4.8
 */
@property(strong) NSNumber * markerBorderThickness;

/**
 The color of the disabled marker (when the graph is hidden).
 @version 3.4.8
 */
@property(strong) NSString * markerDisabledColor;

/**
 Space between legend marker and legend text, in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * markerLabelGap;

/**
 Size of the legend marker (key).
 @version 3.4.8
 */
@property(strong) NSNumber * markerSize;

/**
 Shape of the legend marker (key). Possible values are: square, circle, diamond, triangleUp, triangleDown, triangleLeft, triangleDown, bubble, line, none. 
 @version 3.4.8
 */
@property(strong) NSString * markerType;

/**
 Maximum number of columns in the legend. If Legend's position is set to "right" or "left", maxColumns is automatically set to 1.
 @version 3.4.8
 */
@property(strong) NSNumber * maxColumns;

/**
 The text which will be displayed in the value portion of the legend when user is not hovering above any data point. The tags should be made out of two parts - the name of a field (value / open / close / high / low) and the value of the period you want to be show - open / close / high / low / sum / average / count. For example: [[value.sum]] means that  sum of all data points of value field in the selected period will be displayed.
 @version 3.4.8
 */
@property(strong) NSString * periodValueText;

/**
 Position of a legend. Possible values are: "bottom", "top", "left", "right" and "absolute". In case "absolute", you should set left and top properties too. (this setting is ignored in Stock charts). In case legend is used with AmMap, position is set to "absolute" automatically.
 @version 3.4.8
 */
@property(strong) NSString * position;

/**
 Specifies whether legend entries should be placed in reversed order.
 @version 3.4.8
 */
@property(assign) BOOL reversedOrder;

/**
 In case legend position is set to "absolute", you can set distance from right side of the chart, in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * right;

/**
 Legend item text color on roll-over.
 @version 3.4.8
 */
@property(strong) NSString * rollOverColor;

/**
 When you roll-over the legend entry, all other graphs can reduce their opacity, so that the graph you rolled-over would be distinguished. This style specifies the opacity of the graphs.
 @version 3.4.8
 */
@property(strong) NSNumber * rollOverGraphAlpha;

/**
 You can use this property to turn all the legend entries off.
 @version 3.4.8
 */
@property(assign) BOOL showEntries;

/**
 Horizontal space between legend items, in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * spacing;

/**
 Whether showing/hiding of graphs by clicking on the legend marker is enabled or not. In case legend is used with AmMap, this is set to false automatically.
 @version 3.4.8
 */
@property(assign) BOOL switchable;

/**
 Legend switch color.
 @version 3.4.8
 */
@property(strong) NSString * switchColor;

/**
 Legend switch type (in case the legend is switchable). Possible values are "x" and "v".
 @version 3.4.8
 */
@property(strong) NSString * switchType;

/**
 If true, clicking on the text will show/hide balloon of the graph. Otherwise it will show/hide graph/slice, if switchable is set to true.
 @version 3.4.8
 */
@property(assign) BOOL textClickEnabled;

/**
 In case legend position is set to "absolute", you can set distance from top of the chart, in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * top;

/**
 Legend markers can mirror graph’s settings, displaying a line and a real bullet as in the graph itself. Set this property to true if you want to enable this feature.
 @version 3.4.8
 */
@property(assign) BOOL useGraphSettings;

/**
 Labels will use marker color if you set this to true.
 @version 3.4.8
 */
@property(assign) BOOL useMarkerColorForLabels;

/**
 Specifies if legend values should be use same color as corresponding markers.
 @version 3.4.8
 */
@property(assign) BOOL useMarkerColorForValues;

/**
 Alignment of the value text. Possible values are "left" and "right".
 @version 3.4.8
 */
@property(strong) NSString * valueAlign;

/**
 The text which will be displayed in the value portion of the legend. You can use tags like [[value]], [[open]], [[high]], [[low]], [[close]], [[percents]], [[description]].
 @version 3.4.8
 */
@property(strong) NSString * valueText;

/**
 Width of the value text.
 @version 3.4.8
 */
@property(strong) NSNumber * valueWidth;

/**
 Vertical space between legend items also between legend border and first and last legend row.
 @version 3.4.8
 */
@property(strong) NSNumber * verticalGap;

/**
 Width of a legend, when position is set to absolute.
 @version 3.4.8
 */
@property(strong) NSNumber * width;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end