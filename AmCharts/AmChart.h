// 
//  AmChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@class AmBalloon;
@class AmLegend;

@interface AmChart : NSObject

/**
 Array of Labels. Example of label object, with all possible properties:<br>
    {"x": 20, "y": 20, "text": "this is label", "align": "left", "size": 12, "color": "#CC0000", "alpha": 1, "rotation": 0, "bold": true, "url": "http://www.amcharts.com"}
 */
@property(strong) NSMutableArray * allLabels;

/**
 Opacity of background. Set it to &gt;0 value if you want backgroundColor to work. However we recommend changing div's background-color style for changing background color.
 */
@property(strong) NSNumber * backgroundAlpha;

/**
 Background color. You should set backgroundAlpha to &gt;0 value in order background to be visible. We recommend setting background color directly on a chart's DIV instead of using this property.
 */
@property(strong) NSString * backgroundColor;

/**
 The chart creates AmBalloon class itself. If you want to customize balloon, get balloon instance using this property, and then change balloon's properties.
 */
@property(strong) AmBalloon * balloon;

/**
 Opacity of chart's border. Value range is 0 - 1.
 */
@property(strong) NSNumber * borderAlpha;

/**
 Color of chart's border. You should set borderAlpha &gt;0 in order border to be visible. We recommend setting border color directly on a chart's DIV instead of using this property.
 */
@property(strong) NSString * borderColor;

/**
 Text color.
 */
@property(strong) NSString * color;

/**
 Non-commercial version only. Specifies position of link to amCharts site.
 */
@property(strong) NSString * creditsPosition;

/**
 Array of data objects, for example: [{country:"US", value:524},{country:"UK", value:624},{country:"Lithuania", value:824}]. You can have any number of fields and use any field names. In case of AmMap, data provider should be MapData object.
 */
@property(strong) NSMutableArray * dataProvider;

/**
 Decimal separator.
 */
@property(strong) NSString * decimalSeparator;

/**
 Object of export config. Will enable saving chart as an image for all modern browsers except IE9 (IE10+ works fine).
 */
@property(strong) NSString * exportConfig;

/**
 Font family.
 */
@property(strong) NSString * fontFamily;

/**
 Font size.
 */
@property(strong) NSNumber * fontSize;

/**
 If you set this to true, the lines of the chart will be distorted and will produce hand-drawn effect. Try to adjust chart.handDrawScatter and chart.handDrawThickness properties for a more scattered result.
 */
@property(assign) BOOL handDrawn;

/**
 Defines by how many pixels hand-drawn line (when handDrawn is set to true) will fluctuate.
 */
@property(strong) NSNumber * handDrawScatter;

/**
 Defines by how many pixels line thickness will fluctuate (when handDrawn is set to true).
 */
@property(strong) NSNumber * handDrawThickness;

/**
 Time, in milliseconds after which balloon is hidden if the user rolls-out of the object. Might be useful for AmMap to avoid balloon flickering while moving mouse over the areas. Note, this is not duration of fade-out. Duration of fade-out is set in AmBalloon class.
 */
@property(strong) NSNumber * hideBalloonTime;

/**
 Legend of a chart.
 */
@property(strong) AmLegend * legend;

/**
 Read-only. Reference to the div of the legend.
 */
@property(strong) NSString * legendDiv;

/**
 This setting affects touch-screen devices only. If a chart is on a page, and panEventsEnabled are set to true, the page won't move if the user touches the chart first. If a chart is big enough and occupies all the screen of your touch device, the user won’t be able to move the page at all. If you think that selecting/panning the chart or moving/pinching the map is a primary purpose of your users, you should set panEventsEnabled to true, otherwise - false.
 */
@property(assign) BOOL panEventsEnabled;

/**
 Specifies path to the folder where images like resize grips, lens and similar are.
 */
@property(strong) NSString * pathToImages;

/**
 Precision of percent values. -1 means percent values won't be rounded at all and show as they are.
 */
@property(strong) NSNumber * percentPrecision;

/**
 Precision of values. -1 means values won't be rounded at all and show as they are.
 */
@property(strong) NSNumber * precision;

/**
 Prefixes which are used to make big numbers shorter: 2M instead of 2000000, etc. Prefixes are used on value axes and in the legend. To enable prefixes, set usePrefixes property to true.
 */
@property(strong) NSMutableArray * prefixesOfBigNumbers;

/**
 Prefixes which are used to make small numbers shorter: 2μ instead of 0.000002, etc. Prefixes are used on value axes and in the legend. To enable prefixes, set usePrefixes property to true.
 */
@property(strong) NSMutableArray * prefixesOfSmallNumbers;

/**
 Theme of a chart. Config files of themes can be found in amcharts/themes/ folder. More info about using themes.
 */
@property(strong) NSString * theme;

/**
 Thousands separator.
 */
@property(strong) NSString * thousandsSeparator;

/**
 Array of Title objects.
 */
@property(strong) NSMutableArray * titles;

/**
 Type of a chart. Required when creating chart using JSON. Possible types are: serial, pie, xy, radar, funnel, gauge, map, stock.
 */
@property(strong) NSString * type;

/**
 If true, prefixes will be used for big and small numbers. You can set arrays of prefixes via prefixesOfSmallNumbers and prefixesOfBigNumbers properties.
 */
@property(assign) BOOL usePrefixes;

/**
 Read-only. Indicates current version of a script.
 */
@property(strong) NSString * version;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end