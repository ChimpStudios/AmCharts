// 
//  AmGraph.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@class AmValueAxis;
@class AmGraph;

@interface AmGraph : NSObject

/**
 Name of the alpha field in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * alphaField;

/**
 Value balloon color. Will use graph or data item color if not set.
 @version 3.4.8
 */
@property(strong) NSString * balloonColor;

/**
 If you set some function, the graph will call it and pass GraphDataItem and AmGraph object to it. This function should return a string which will be displayed in a balloon.
 @version 3.4.8
 */
@property(assign) id balloonFunction;

/**
 Balloon text. You can use tags like [[value]], [[description]], [[percents]], [[open]], [[category]] or any other field name from your data provider. HTML tags can also be used.
 @version 3.4.8
 */
@property(strong) NSString * balloonText;

/**
 Specifies if the line graph should be placed behind column graphs
 @version 3.4.8
 */
@property(assign) BOOL behindColumns;

/**
 Type of the bullets. Possible values are: "none", "round", "square", "triangleUp", "triangleDown", "triangleLeft", "triangleRight", "bubble", "diamond",   "xError", "yError" and "custom".
 @version 3.4.8
 */
@property(strong) NSString * bullet;

/**
 Opacity of bullets. Value range is 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * bulletAlpha;

/**
 bulletAxis value is used when you are building error chart. Error chart is a regular serial or XY chart with bullet type set to "xError" or "yError". The graph should know which axis should be used to determine the size of this bullet - that's when bulletAxis should be set. Besides that, you should also set graph.errorField. You can also use other bullet types with this feature too. For example, if you set bulletAxis for XY chart, the size of a bullet will change as you zoom the chart.
 @version 3.4.8
 */
@property(strong) AmValueAxis * bulletAxis ;

/**
 Bullet border opacity.
 @version 3.4.8
 */
@property(strong) NSNumber * bulletBorderAlpha;

/**
 Bullet border color. Will use lineColor if not set.
 @version 3.4.8
 */
@property(strong) NSString * bulletBorderColor;

/**
 Bullet border thickness.
 @version 3.4.8
 */
@property(strong) NSNumber * bulletBorderThickness;

/**
 Bullet color. Will use lineColor if not set.
 @version 3.4.8
 */
@property(strong) NSString * bulletColor;

/**
 Name of the bullet field in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * bulletField;

/**
 Bullet offset. Distance from the actual data point to the bullet. Can be used to place custom bullets above the columns.
 @version 3.4.8
 */
@property(strong) NSNumber * bulletOffset;

/**
 Bullet size.
 @version 3.4.8
 */
@property(strong) NSNumber * bulletSize;

/**
 Name of the bullet size field in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * bulletSizeField;

/**
 Name of the close field (used by candlesticks and ohlc) in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * closeField;

/**
 In case you want to place this graph's columns in front of other columns, set this to false. In case "true", the columns will be clustered next to each other.
 @version 3.4.8
 */
@property(assign) BOOL clustered;

/**
 Color of value labels. Will use chart's color if not set.
 @version 3.4.8
 */
@property(strong) NSString * color;

/**
 Name of the color field in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * colorField;

/**
 You can specify custom column width for each graph individually. Value range is 0 - 1 (we set relative width, not pixel width here).
 @version 3.4.8
 */
@property(strong) NSNumber * columnWidth;

/**
 Specifies whether to connect data points if data is missing. The default value is true.
 @version 3.4.8
 */
@property(assign) BOOL connect;

/**
 Corner radius of column. It can be set both in pixels or in percents. The chart's depth and angle styles must be set to 0. The default value is 0. Note, cornerRadiusTop will be applied for all corners of the column, JavaScript charts do not have a possibility to set separate corner radius for top and bottom. As we want all the property names to be the same both on JS and Flex, we didn't change this too.
 @version 3.4.8
 */
@property(strong) NSNumber * cornerRadiusTop;

/**
 If bulletsEnabled of ChartCurosor is true, a bullet on each graph follows the cursor. You can set opacity of each graphs bullet. In case you want to disable these bullets for a certain graph, set opacity to 0.
 @version 3.4.8
 */
@property(strong) NSNumber * cursorBulletAlpha;

/**
 Path to the image of custom bullet.
 @version 3.4.8
 */
@property(strong) NSString * customBullet;

/**
 Name of the custom bullet field in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * customBulletField;

/**
 Path to the image for legend marker.
 @version 3.4.8
 */
@property(strong) NSString * customMarker;

/**
 Dash length. If you set it to a value greater than 0, the graph line (or columns border) will be dashed.
 @version 3.4.8
 */
@property(strong) NSNumber * dashLength;

/**
 Name of the dash length field in your dataProvider. This property adds a possibility to change graphs’ line from solid to dashed on any data point. You can also make columns border dashed using this setting.
 @version 3.4.8
 */
@property(strong) NSString * dashLengthField;

/**
 Name of the description field in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * descriptionField;

/**
 Name of error value field in your data provider.
 @version 3.4.8
 */
@property(strong) NSString * errorField;

/**
 Opacity of fill. Plural form is used to keep the same property names as our Flex charts'. Flex charts can accept array of numbers to generate gradients. Although you can set array here, only first value of this array will be used.
 @version 3.4.8
 */
@property(strong) NSNumber * fillAlphas;

/**
 Fill color. Will use lineColor if not set. You can also set array of colors here.
 @version 3.4.8
 */
@property(strong) NSString * fillColors;

/**
 Name of the fill colors field in your dataProvider. This property adds a possibility to change line graphs’ fill color on any data point to create highlighted sections of the graph. 
 @version 3.4.8
 */
@property(strong) NSString * fillColorsField;

/**
 You can set another graph here and if fillAlpha is &gt;0, the area from this graph to fillToGraph will be filled (instead of filling the area to the X axis).
 @version 3.4.8
 */
@property(strong) AmGraph * fillToGraph;

/**
 Size of value labels text. Will use chart's fontSize if not set.
 @version 3.4.8
 */
@property(strong) NSNumber * fontSize;

/**
 Orientation of the gradient fills (only for "column" graph type). Possible values are "vertical" and "horizontal".
 @version 3.4.8
 */
@property(strong) NSString * gradientOrientation;

/**
 Specifies whether the graph is hidden. Do not use this to show/hide the graph, use hideGraph(graph) and showGraph(graph) methods instead.
 @version 3.4.8
 */
@property(assign) BOOL hidden;

/**
 If there are more data points than hideBulletsCount, the bullets will not be shown. 0 means the bullets will always be visible.
 @version 3.4.8
 */
@property(strong) NSNumber * hideBulletsCount;

/**
 Name of the high field (used by candlesticks and ohlc) in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * highField;

/**
 Unique id of a graph. It is not required to set one, unless you want to use this graph for as your scrollbar's graph and need to indicate which graph should be used.
 @version 3.4.8
 */
@property(strong) NSString * uid;

/**
 Whether to include this graph when calculating min and max value of the axis.
 @version 3.4.8
 */
@property(assign) BOOL includeInMinMax;

/**
 Name of label color field in data provider.
 @version 3.4.8
 */
@property(strong) NSString * labelColorField;

/**
 Position of value label. Possible values are: "bottom", "top", "right", "left", "inside", "middle". Sometimes position is changed by the chart, depending on a graph type, rotation, etc.
 @version 3.4.8
 */
@property(strong) NSString * labelPosition;

/**
 Value label text. You can use tags like [[value]], [[description]], [[percents]], [[open]], [[category]].
 @version 3.4.8
 */
@property(strong) NSString * labelText;

/**
 Legend marker opacity. Will use lineAlpha if not set. Value range is 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * legendAlpha;

/**
 Legend marker color. Will use lineColor if not set.
 @version 3.4.8
 */
@property(strong) NSString * legendColor;

/**
 The text which will be displayed in the value portion of the legend when user is not hovering above any data point. The tags should be made out of two parts - the name of a field (value / open / close / high / low) and the value of the period you want to be show - open / close / high / low / sum / average / count. For example: [[value.sum]] means that  sum of all data points of value field in the selected period will be displayed.
 @version 3.4.8
 */
@property(strong) NSString * legendPeriodValueText;

/**
 Legend value text. You can use tags like [[value]], [[description]], [[percents]], [[open]], [[category]] You can also use custom fields from your dataProvider. If not set, uses Legend's valueText.
 @version 3.4.8
 */
@property(strong) NSString * legendValueText;

/**
 Opacity of the line (or column border). Value range is 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * lineAlpha;

/**
 Color of the line (or column border). If you do not set any, the color from [[AmCoordinateChart
 @version 3.4.8
 */
@property(strong) NSString * lineColor;

/**
 Name of the line color field in your dataProvider. This property adds a possibility to change graphs’ line color on any data point to create highlighted sections of the graph. 
 @version 3.4.8
 */
@property(strong) NSString * lineColorField;

/**
 Specifies thickness of the graph line (or column border).
 @version 3.4.8
 */
@property(strong) NSNumber * lineThickness;

/**
 Name of the low field (used by candlesticks and ohlc) in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * lowField;

/**
 Legend marker type. You can set legend marker (key) type for individual graphs. Possible values are: square, circle, diamond, triangleUp, triangleDown, triangleLeft, triangleDown, bubble, line, none.
 @version 3.4.8
 */
@property(strong) NSString * markerType;

/**
 Specifies size of the bullet which value is the biggest (XY chart).
 @version 3.4.8
 */
@property(strong) NSNumber * maxBulletSize;

/**
 Specifies minimum size of the bullet (XY chart).
 @version 3.4.8
 */
@property(strong) NSNumber * minBulletSize;

/**
 It is useful if you have really lots of data points. Based on this property the graph will omit some of the lines (if the distance between points is less that minDistance, in pixels). This will  not affect the bullets or indicator in anyway, so the user will not see any difference (unless you set minValue to a bigger value, let say 5), but will increase performance as less lines will be drawn. By setting value to a bigger number you can also make your lines look less jagged.
 @version 3.4.8
 */
@property(strong) NSNumber * minDistance;

/**
 If you use different colors for your negative values, a graph below zero line is filled with negativeColor. With this property you can define a different base value at which colors should be changed to negative colors. 
 @version 3.4.8
 */
@property(strong) NSNumber * negativeBase;

/**
 Fill opacity of negative part of the graph. Will use fillAlphas if not set.
 @version 3.4.8
 */
@property(strong) NSNumber * negativeFillAlphas;

/**
 Fill color of negative part of the graph. Will use fillColors if not set.
 @version 3.4.8
 */
@property(strong) NSString * negativeFillColors;

/**
 Opacity of the negative portion of the line (or column border). Value range is 0 - 1.
 @version 3.4.8
 */
@property(strong) NSNumber * negativeLineAlpha;

/**
 Color of the line (or column) when the values are negative. In case the graph type is candlestick or ohlc, negativeLineColor is used when close value is less then open value.
 @version 3.4.8
 */
@property(strong) NSString * negativeLineColor;

/**
 If you set it to true, column chart will begin new stack. This allows having Clustered and Stacked column/bar chart.
 @version 3.4.8
 */
@property(assign) BOOL newStack;

/**
 In case you want to have a step line graph without risers, you should set this to true.
 @version 3.4.8
 */
@property(assign) BOOL noStepRisers;

/**
 Name of the open field (used by floating columns, candlesticks and ohlc) in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * openField;

/**
 Value of pattern should be object with url, width, height of an image, optionally it might have x, y, randomX and randomY values. For example: {"url":"../amcharts/patterns/black/pattern1.png", "width":4, "height":4}. If you want to have individual patterns for each column, define patterns in data provider and set graph.patternField property. Check amcharts/patterns folder for some patterns. You can create your own patterns and use them. Note, x, y, randomX and randomY properties won't work with IE8 and older. 3D bar/Pie charts won't work properly with patterns. 
 @version 3.4.8
 */
@property(strong) NSString * pattern;

/**
 Field name in your data provider which holds pattern information. Value of pattern should be object with url, width, height of an image, optionally it might have x, y, randomX and randomY values. For example: {"url":"../amcharts/patterns/black/pattern1.png", "width":4, "height":4}. Check amcharts/patterns folder for some patterns. You can create your own patterns and use them. Note, x, y, randomX and randomY properties won't work with IE8 and older. 3D bar/Pie charts won't work properly with patterns.
 @version 3.4.8
 */
@property(strong) NSString * patternField;

/**
 This property can be used by step graphs - you can set how many periods one horizontal line should span.
 @version 3.4.8
 */
@property(strong) NSNumber * periodSpan;

/**
 Specifies where data points should be placed - on the beginning of the period (day, hour, etc) or in the middle (only when parseDates property of categoryAxis is set to true). This setting affects Serial chart only. Possible values are "start", "middle" and "end"
 @version 3.4.8
 */
@property(strong) NSString * pointPosition;

/**
 Precision of values. Will use chart's precision if not set any.
 @version 3.4.8
 */
@property(strong) NSNumber * precision;

/**
 If graph's type is column and labelText is set, graph hides labels which do not fit into the column's space. If you don't want these labels to be hidden, set this to true.
 @version 3.4.8
 */
@property(assign) BOOL showAllValueLabels;

/**
 Specifies whether the value balloon of this graph is shown when mouse is over data item or chart's indicator is over some series.
 @version 3.4.8
 */
@property(assign) BOOL showBalloon;

/**
 Specifies graphs value at which cursor is showed. This is only important for candlestick and ohlc charts, also if column chart has "open" value. Possible values are: "open", "close", "high", "low".
 @version 3.4.8
 */
@property(strong) NSString * showBalloonAt;

/**
 Works with candlestick graph type, you can set it to open, close, high, low. If you set it to high, the events will be shown at the tip of the high line.
 @version 3.4.8
 */
@property(strong) NSString * showBulletsAt ;

/**
 If you want mouse pointer to change to hand when hovering the graph, set this property to true. 
 @version 3.4.8
 */
@property(assign) BOOL showHandOnHover;

/**
 If the value axis of this graph has stack types like "regular" or "100%" You can exclude this graph from stacking.
 @version 3.4.8
 */
@property(assign) BOOL stackable;

/**
 Graph title.
 @version 3.4.8
 */
@property(strong) NSString * title;

/**
 Type of the graph. Possible values are: "line", "column", "step", "smoothedLine", "candlestick", "ohlc". XY and Radar charts can only display "line" type graphs.
 @version 3.4.8
 */
@property(strong) NSString * type;

/**
 Name of the url field in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * urlField;

/**
 Target to open URLs in, i.e. _blank, _top, etc.
 @version 3.4.8
 */
@property(strong) NSString * urlTarget;

/**
 Specifies which value axis the graph will use. Will use the first value axis if not set. You can use reference to the real ValueAxis object or set value axis id.
 @version 3.4.8
 */
@property(strong) NSString * valueAxis;

/**
 Name of the value field in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * valueField;

/**
 Specifies whether this graph should be shown in the Legend.
 @version 3.4.8
 */
@property(assign) BOOL visibleInLegend;

/**
 XY chart only. A horizontal value axis object to attach graph to.
 @version 3.4.8
 */
@property(strong) AmValueAxis * xAxis;

/**
 XY chart only. Name of the x field in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * xField;

/**
 XY chart only. A vertical value axis object to attach graph to.
 @version 3.4.8
 */
@property(strong) AmValueAxis * yAxis;

/**
 XY chart only. Name of the y field in your dataProvider.
 @version 3.4.8
 */
@property(strong) NSString * yField;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end