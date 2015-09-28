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
 */
@property(strong) NSString * alphaField;

/**
 Each series uses a theme chart color.  REQUIRES customized HTML template
 http://www.amcharts.com/tips/automatically-apply-theme-colors-to-each-individual-column/
 */
@property(strong) NSNumber *autoColor;

/**
 Value balloon color. Will use graph or data item color if not set.
 */
@property(strong) NSString * balloonColor;

/**
 If you set some function, the graph will call it and pass GraphDataItem and AmGraph object to it. This function should return a string which will be displayed in a balloon.
 */
@property(assign) id balloonFunction;

/**
 Balloon text. You can use tags like [[value]], [[description]], [[percents]], [[open]], [[category]] or any other field name from your data provider. HTML tags can also be used.
 */
@property(strong) NSString * balloonText;

/**
 Specifies if the line graph should be placed behind column graphs
 */
@property(assign) NSNumber * behindColumns;

/**
 Type of the bullets. Possible values are: "none", "round", "square", "triangleUp", "triangleDown", "triangleLeft", "triangleRight", "bubble", "diamond",   "xError", "yError" and "custom".
 */
@property(strong) NSString * bullet;

/**
 Opacity of bullets. Value range is 0 - 1.
 */
@property(strong) NSNumber * bulletAlpha;

/**
 bulletAxis value is used when you are building error chart. Error chart is a regular serial or XY chart with bullet type set to "xError" or "yError". The graph should know which axis should be used to determine the size of this bullet - that's when bulletAxis should be set. Besides that, you should also set graph.errorField. You can also use other bullet types with this feature too. For example, if you set bulletAxis for XY chart, the size of a bullet will change as you zoom the chart.
 */
@property(strong) AmValueAxis * bulletAxis ;

/**
 Bullet border opacity.
 */
@property(strong) NSNumber * bulletBorderAlpha;

/**
 Bullet border color. Will use lineColor if not set.
 */
@property(strong) NSString * bulletBorderColor;

/**
 Bullet border thickness.
 */
@property(strong) NSNumber * bulletBorderThickness;

/**
 Bullet color. Will use lineColor if not set.
 */
@property(strong) NSString * bulletColor;

/**
 Name of the bullet field in your dataProvider.
 */
@property(strong) NSString * bulletField;

/**
 Bullet offset. Distance from the actual data point to the bullet. Can be used to place custom bullets above the columns.
 */
@property(strong) NSNumber * bulletOffset;

/**
 Bullet size.
 */
@property(strong) NSNumber * bulletSize;

/**
 Name of the bullet size field in your dataProvider.
 */
@property(strong) NSString * bulletSizeField;

/**
 Name of the close field (used by candlesticks and ohlc) in your dataProvider.
 */
@property(strong) NSString * closeField;

/**
 In case you want to place this graph's columns in front of other columns, set this to false. In case "true", the columns will be clustered next to each other.
 */
@property(assign) NSNumber * clustered;

/**
 Color of value labels. Will use chart's color if not set.
 */
@property(strong) NSString * color;

/**
 Name of the color field in your dataProvider.
 */
@property(strong) NSString * colorField;

/**
 You can specify custom column width for each graph individually. Value range is 0 - 1 (we set relative width, not pixel width here).
 */
@property(strong) NSNumber * columnWidth;

/**
 Specifies whether to connect data points if data is missing. The default value is true.
 */
@property(assign) NSNumber * connect;

/**
 Corner radius of column. It can be set both in pixels or in percents. The chart's depth and angle styles must be set to 0. The default value is 0. Note, cornerRadiusTop will be applied for all corners of the column, JavaScript charts do not have a possibility to set separate corner radius for top and bottom. As we want all the property names to be the same both on JS and Flex, we didn't change this too.
 */
@property(strong) NSNumber * cornerRadiusTop;

/**
 If bulletsEnabled of ChartCurosor is true, a bullet on each graph follows the cursor. You can set opacity of each graphs bullet. In case you want to disable these bullets for a certain graph, set opacity to 0.
 */
@property(strong) NSNumber * cursorBulletAlpha;

/**
 Path to the image of custom bullet.
 */
@property(strong) NSString * customBullet;

/**
 Name of the custom bullet field in your dataProvider.
 */
@property(strong) NSString * customBulletField;

/**
 Path to the image for legend marker.
 */
@property(strong) NSString * customMarker;

/**
 Dash length. If you set it to a value greater than 0, the graph line (or columns border) will be dashed.
 */
@property(strong) NSNumber * dashLength;

/**
 Name of the dash length field in your dataProvider. This property adds a possibility to change graphs’ line from solid to dashed on any data point. You can also make columns border dashed using this setting.
 */
@property(strong) NSString * dashLengthField;

/**
 Name of the description field in your dataProvider.
 */
@property(strong) NSString * descriptionField;

/**
 Name of error value field in your data provider.
 */
@property(strong) NSString * errorField;

/**
 Opacity of fill. Plural form is used to keep the same property names as our Flex charts'. Flex charts can accept array of numbers to generate gradients. Although you can set array here, only first value of this array will be used.
 */
@property(strong) NSNumber * fillAlphas;

/**
 Fill color. Will use lineColor if not set. You can also set array of colors here.
 */
@property(strong) NSString * fillColors;

/**
 Name of the fill colors field in your dataProvider. This property adds a possibility to change line graphs’ fill color on any data point to create highlighted sections of the graph. 
 */
@property(strong) NSString * fillColorsField;

/**
 XY chart only. If you set this property to id or reference of your X or Y axis, and the fillAlphas is > 0, the area between graph and axis will be filled with color, like in this demo.
 */
@property(strong) NSString * fillToAxis;

/**
 You can set another graph here and if fillAlpha is &gt;0, the area from this graph to fillToGraph will be filled (instead of filling the area to the X axis).
 */
@property(strong) AmGraph * fillToGraph;

/**
 Column width in pixels. If you set this property, columns will be of a fixed width and won't adjust to the available space.
 */
@property(strong) NSNumber * fixedColumnWidth;

/**
 Size of value labels text. Will use chart's fontSize if not set.
 */
@property(strong) NSNumber * fontSize;

/**
 Name of the gap field in your dataProvider. You can force graph to show gap at a desired data point using this feature.
 */
@property(strong) NSString * gapField;

/**
 Using this property you can specify when graph should display gap - if the time difference between data points is bigger than duration of minPeriod * gapPeriod, and connect property of a graph is set to false, graph will display gap.
 */
@property(strong) NSNumber * gapPeriod;

/**
 Orientation of the gradient fills (only for "column" graph type). Possible values are "vertical" and "horizontal".
 */
@property(strong) NSString * gradientOrientation;

/**
 Specifies whether the graph is hidden. Do not use this to show/hide the graph, use hideGraph(graph) and showGraph(graph) methods instead.
 */
@property(assign) NSNumber * hidden;

/**
 If there are more data points than hideBulletsCount, the bullets will not be shown. 0 means the bullets will always be visible.
 */
@property(strong) NSNumber * hideBulletsCount;

/**
 Name of the high field (used by candlesticks and ohlc) in your dataProvider.
 */
@property(strong) NSString * highField;

/**
 Unique id of a graph. It is not required to set one, unless you want to use this graph for as your scrollbar's graph and need to indicate which graph should be used.
 */
@property(strong) NSString * uid;

/**
 Whether to include this graph when calculating min and max value of the axis.
 */
@property(assign) NSNumber * includeInMinMax;

/**
 Data label text anchor.
 */
@property(strong) NSString * labelAnchor;

/**
 Name of label color field in data provider.
 */
@property(strong) NSString * labelColorField;

/**
 You can use it to format labels of data items in any way you want. Graph will call this function and pass reference to GraphDataItem and formatted text as attributes. This function should return string which will be displayed as label.
 */
@property(strong) NSString * labelFunction;

/**
 Offset of data label.
 */
@property(strong) NSNumber * labelOffset;

/**
 Position of value label. Possible values are: "bottom", "top", "right", "left", "inside", "middle". Sometimes position is changed by the chart, depending on a graph type, rotation, etc.
 */
@property(strong) NSString * labelPosition;

/**
 Rotation of a data label.
 */
@property(strong) NSNumber * labelRotation;

/**
 Value label text. You can use tags like [[value]], [[description]], [[percents]], [[open]], [[category]].
 */
@property(strong) NSString * labelText;

/**
 Legend marker opacity. Will use lineAlpha if not set. Value range is 0 - 1.
 */
@property(strong) NSNumber * legendAlpha;

/**
 Legend marker color. Will use lineColor if not set.
 */
@property(strong) NSString * legendColor;

/**
 The text which will be displayed in the value portion of the legend when user is not hovering above any data point. The tags should be made out of two parts - the name of a field (value / open / close / high / low) and the value of the period you want to be show - open / close / high / low / sum / average / count. For example: [[value.sum]] means that  sum of all data points of value field in the selected period will be displayed.
 */
@property(strong) NSString * legendPeriodValueText;

/**
 Legend value text. You can use tags like [[value]], [[description]], [[percents]], [[open]], [[category]] You can also use custom fields from your dataProvider. If not set, uses Legend's valueText.
 */
@property(strong) NSString * legendValueText;

/**
 Opacity of the line (or column border). Value range is 0 - 1.
 */
@property(strong) NSNumber * lineAlpha;

/**
 Color of the line (or column border). If you do not set any, the color from [[AmCoordinateChart
 */
@property(strong) NSString * lineColor;

/**
 Name of the line color field in your dataProvider. This property adds a possibility to change graphs’ line color on any data point to create highlighted sections of the graph. 
 */
@property(strong) NSString * lineColorField;

/**
 Specifies thickness of the graph line (or column border).
 */
@property(strong) NSNumber * lineThickness;

/**
 Name of the low field (used by candlesticks and ohlc) in your dataProvider.
 */
@property(strong) NSString * lowField;

/**
 Legend marker type. You can set legend marker (key) type for individual graphs. Possible values are: square, circle, diamond, triangleUp, triangleDown, triangleLeft, triangleDown, bubble, line, none.
 */
@property(strong) NSString * markerType;

/**
 Specifies size of the bullet which value is the biggest (XY chart).
 */
@property(strong) NSNumber * maxBulletSize;

/**
 Specifies minimum size of the bullet (XY chart).
 */
@property(strong) NSNumber * minBulletSize;

/**
 It is useful if you have really lots of data points. Based on this property the graph will omit some of the lines (if the distance between points is less that minDistance, in pixels). This will  not affect the bullets or indicator in anyway, so the user will not see any difference (unless you set minValue to a bigger value, let say 5), but will increase performance as less lines will be drawn. By setting value to a bigger number you can also make your lines look less jagged.
 */
@property(strong) NSNumber * minDistance;

/**
 If you use different colors for your negative values, a graph below zero line is filled with negativeColor. With this property you can define a different base value at which colors should be changed to negative colors. 
 */
@property(strong) NSNumber * negativeBase;

/**
 Fill opacity of negative part of the graph. Will use fillAlphas if not set.
 */
@property(strong) NSNumber * negativeFillAlphas;

/**
 Fill color of negative part of the graph. Will use fillColors if not set.
 */
@property(strong) NSString * negativeFillColors;

/**
 Opacity of the negative portion of the line (or column border). Value range is 0 - 1.
 */
@property(strong) NSNumber * negativeLineAlpha;

/**
 Color of the line (or column) when the values are negative. In case the graph type is candlestick or ohlc, negativeLineColor is used when close value is less then open value.
 */
@property(strong) NSString * negativeLineColor;

/**
 If you set it to true, column chart will begin new stack. This allows having Clustered and Stacked column/bar chart.
 */
@property(assign) NSNumber * amNewStack;

/**
 In case you want to have a step line graph without risers, you should set this to true.
 */
@property(assign) NSNumber * noStepRisers;

/**
 Name of the open field (used by floating columns, candlesticks and ohlc) in your dataProvider.
 */
@property(strong) NSString * openField;

/**
 Value of pattern should be object with url, width, height of an image, optionally it might have x, y, randomX and randomY values. For example: {"url":"../amcharts/patterns/black/pattern1.png", "width":4, "height":4}. If you want to have individual patterns for each column, define patterns in data provider and set graph.patternField property. Check amcharts/patterns folder for some patterns. You can create your own patterns and use them. Note, x, y, randomX and randomY properties won't work with IE8 and older. 3D bar/Pie charts won't work properly with patterns. 
 */
@property(strong) NSString * pattern;

/**
 Field name in your data provider which holds pattern information. Value of pattern should be object with url, width, height of an image, optionally it might have x, y, randomX and randomY values. For example: {"url":"../amcharts/patterns/black/pattern1.png", "width":4, "height":4}. Check amcharts/patterns folder for some patterns. You can create your own patterns and use them. Note, x, y, randomX and randomY properties won't work with IE8 and older. 3D bar/Pie charts won't work properly with patterns.
 */
@property(strong) NSString * patternField;

/**
 This property can be used by step graphs - you can set how many periods one horizontal line should span.
 */
@property(strong) NSNumber * periodSpan;

/**
 Specifies where data points should be placed - on the beginning of the period (day, hour, etc) or in the middle (only when parseDates property of categoryAxis is set to true). This setting affects Serial chart only. Possible values are "start", "middle" and "end"
 */
@property(strong) NSString * pointPosition;

/**
 Precision of values. Will use chart's precision if not set any.
 */
@property(strong) NSNumber * precision;

/**
 If this is set to true, candlesticks will be colored in a different manner - if current close is less than current open, the candlestick will be empty, otherwise - filled with color. If previous close is less than current close, the candlestick will use positive color, otherwise - negative color.
 */
@property(assign) NSNumber * proCandlesticks;

/**
 If graph's type is column and labelText is set, graph hides labels which do not fit into the column's space. If you don't want these labels to be hidden, set this to true.
 */
@property(assign) NSNumber * showAllValueLabels;

/**
 Specifies whether the value balloon of this graph is shown when mouse is over data item or chart's indicator is over some series.
 */
@property(assign) NSNumber * showBalloon;

/**
 Specifies graphs value at which cursor is showed. This is only important for candlestick and ohlc charts, also if column chart has "open" value. Possible values are: "open", "close", "high", "low".
 */
@property(strong) NSString * showBalloonAt;

/**
 Works with candlestick graph type, you can set it to open, close, high, low. If you set it to high, the events will be shown at the tip of the high line.
 */
@property(strong) NSString * showBulletsAt ;

/**
 If you want mouse pointer to change to hand when hovering the graph, set this property to true. 
 */
@property(assign) NSNumber * showHandOnHover;

/**
 It can only be used together with topRadius (when columns look like cylinders). If you set it to true, the cylinder will be lowered down so that the center of it's bottom circle would be right on category axis.
 */
@property(assign) NSNumber * showOnAxis;

/**
 If the value axis of this graph has stack types like "regular" or "100%" You can exclude this graph from stacking.
 */
@property(assign) NSNumber * stackable;

/**
 Step graph only. Specifies to which direction step should be drawn.
 */
@property(strong) NSString * stepDirection;

/**
 If you set it to false, the graph will not be hidden when user clicks on legend entry.
 */
@property(assign) NSNumber * switchable;

/**
 Graph title.
 */
@property(strong) NSString * title;

/**
 If you set this to 1, columns will become cylinders (must set depth3D and angle properties of a chart to >0 values in order this to be visible). you can make columns look like cones (set topRadius to 0) or even like some glasses (set to bigger than 1). We strongly recommend setting grid opacity to 0 in order this to look good.
 */
@property(strong) NSNumber * topRadius;

/**
 Type of the graph. Possible values are: "line", "column", "step", "smoothedLine", "candlestick", "ohlc". XY and Radar charts can only display "line" type graphs.
 */
@property(strong) NSString * type;

/**
 Name of the url field in your dataProvider.
 */
@property(strong) NSString * urlField;

/**
 Target to open URLs in, i.e. _blank, _top, etc.
 */
@property(strong) NSString * urlTarget;

/**
 If negativeLineColor and/or negativeFillColors are set and useNegativeColorIfDown is set to true (default is false), the line, step and column graphs will use these colors for lines, bullets or columns if previous value is bigger than current value. In case you set openField for the graph, the graph will compare current value with openField value instead of comparing to previous value. 
 */
@property(assign) NSNumber * useNegativeColorIfDown;

/**
 Specifies which value axis the graph will use. Will use the first value axis if not set. You can use reference to the real ValueAxis object or set value axis id.
 */
@property(strong) NSString * valueAxis;

/**
 Name of the value field in your dataProvider.
 */
@property(strong) NSString * valueField;

/**
 Specifies whether this graph should be shown in the Legend.
 */
@property(assign) NSNumber * visibleInLegend;

/**
 XY chart only. A horizontal value axis object to attach graph to.
 */
@property(strong) AmValueAxis * xAxis;

/**
 XY chart only. Name of the x field in your dataProvider.
 */
@property(strong) NSString * xField;

/**
 XY chart only. A vertical value axis object to attach graph to.
 */
@property(strong) AmValueAxis * yAxis;

/**
 XY chart only. Name of the y field in your dataProvider.
 */
@property(strong) NSString * yField;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end