// 
//  AmSlicedChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmChart.h"


@interface AmSlicedChart : AmChart

/**
 Opacity of all slices.
 */
@property(strong) NSNumber * alpha;

/**
 Name of the field in chart's dataProvider which holds slice's alpha.
 */
@property(strong) NSString * alphaField;

/**
 Color of the first slice. All the other will be colored with darker or brighter colors.
 */
@property(strong) NSString * baseColor;

/**
 Lightness increase of each subsequent slice. This is only useful if baseColor is set. Use negative values for darker colors. Value range is from -255 to 255.
 */
@property(strong) NSNumber * brightnessStep;

/**
 Read-only. Array of Slice objects.
 */
@property(strong) NSMutableArray * chartData;

/**
 Name of the field in chart's dataProvider which holds slice's color.
 */
@property(strong) NSString * colorField;

/**
 Specifies the colors of the slices, if the slice color is not set. If there are more slices than colors in this array, the chart picks random color.
 */
@property(strong) NSMutableArray * colors;

/**
 Name of the field in chart's dataProvider which holds a string with description.
 */
@property(strong) NSString * descriptionField;

/**
 Example: [0,10]. Will make slices to be filled with color gradients.
 */
@property(strong) NSMutableArray * gradientRatio;

/**
 Opacity of the group slice. Value range is 0 - 1.
 */
@property(strong) NSNumber * groupedAlpha;

/**
 Color of the group slice. The default value is not set - this means the next available color from "colors" array will be used.
 */
@property(strong) NSString * groupedColor;

/**
 Description of the group slice.
 */
@property(strong) NSString * groupedDescription;

/**
 If this is set to true, the group slice will be pulled out when the chart loads.
 */
@property(assign) BOOL groupedPulled;

/**
 Title of the group slice.
 */
@property(strong) NSString * groupedTitle;

/**
 If there is more than one slice whose percentage of the pie is less than this number, those slices will be grouped together into one slice. This is the "other" slice. It will always be the last slice in a pie.
 */
@property(strong) NSNumber * groupPercent;

/**
 Slices with percent less then hideLabelsPercent won't display labels This is useful to avoid cluttering up the chart, if you have a lot of small slices. 0 means all labels will be shown.
 */
@property(strong) NSNumber * hideLabelsPercent;

/**
 Opacity of a hovered slice. Value range is 0 - 1.
 */
@property(strong) NSNumber * hoverAlpha;

/**
 You can use it to format data labels in any way you want. Chart will call this method and will pass Slice object and formatted text as attributes. This function should return string which will be displayed as label.
 */
@property(strong) NSString * labelFunction;

/**
 Specifies whether data labels are visible.
 */
@property(assign) BOOL labelsEnabled;

/**
 Label tick opacity. Value range is 0 - 1.
 */
@property(strong) NSNumber * labelTickAlpha;

/**
 Label tick color.
 */
@property(strong) NSString * labelTickColor;

/**
 Bottom margin of the chart.
 */
@property(strong) NSNumber * marginBottom;

/**
 Left margin of the chart.
 */
@property(strong) NSNumber * marginLeft;

/**
 Right margin of the chart.
 */
@property(strong) NSNumber * marginRight;

/**
 Top margin of the chart.
 */
@property(strong) NSNumber * marginTop;

/**
 If width of the label is bigger than maxLabelWidth, it will be wrapped.
 */
@property(strong) NSNumber * maxLabelWidth;

/**
 Outline opacity. Value range is 0 - 1.
 */
@property(strong) NSNumber * outlineAlpha;

/**
 Outline color.
 */
@property(strong) NSString * outlineColor;

/**
 Pie outline thickness.
 */
@property(strong) NSNumber * outlineThickness;

/**
 Field name in your data provider which holds pattern information. Value of pattern should be object with url, width, height of an image, optionally it might have x, y, randomX and randomY values. For example: {"url":"../amcharts/patterns/black/pattern1.png", "width":4, "height":4}. Check amcharts/patterns folder for some patterns. You can create your own patterns and use them. Note, x, y, randomX and randomY properties won't work with IE8 and older. 3D bar/Pie charts won't work properly with patterns.
 */
@property(strong) NSString * patternField;

/**
 Name of the field in chart's dataProvider which holds a boolean value telling the chart whether this slice must be pulled or not.
 */
@property(strong) NSString * pulledField;

/**
 Pull out duration, in seconds.
 */
@property(strong) NSNumber * pullOutDuration;

/**
 Pull out effect. Possible values are: easeOutSine, easeInSine, elastic, bounce
 */
@property(strong) NSString * pullOutEffect;

/**
 If this is set to true, only one slice can be pulled out at a time. If the viewer clicks on a slice, any other pulled-out slice will be pulled in.
 */
@property(assign) BOOL pullOutOnlyOne;

/**
 Specifies whether the animation should be sequenced or all slices should appear at once.
 */
@property(assign) BOOL sequencedAnimation;

/**
 Initial opacity of all slices. Slices will fade in from startAlpha.
 */
@property(strong) NSNumber * startAlpha;

/**
 Duration of the animation, in seconds.
 */
@property(strong) NSNumber * startDuration;

/**
 Animation effect. Possible values are: easeOutSine, easeInSine, elastic, bounce
 */
@property(strong) NSString * startEffect;

/**
 Name of the field in chart's dataProvider which holds slice's title.
 */
@property(strong) NSString * titleField;

/**
 Name of the field in chart's dataProvider which holds url which would be accessed if the user clicks on a slice.
 */
@property(strong) NSString * urlField;

/**
 If url is specified for a slice, it will be opened when user clicks on it. urlTarget specifies target of this url. Use _blank if you want url to be opened in a new window.
 */
@property(strong) NSString * urlTarget;

/**
 Name of the field in chart's dataProvider which holds slice's value.
 */
@property(strong) NSString * valueField;

/**
 Name of the field in chart's dataProvider which holds boolean variable defining whether this data item should have an entry in the legend.
 */
@property(strong) NSString * visibleInLegendField;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end