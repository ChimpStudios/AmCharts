// 
//  AmStockChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@class AmBalloon;
@class AmCategoryAxesSettings;
@class AmChartCursorSettings;
@class AmChartScrollbarSettings;
@class AmDataSetSelector;
@class AmLegendSettings;
@class AmDataSet;
@class AmPanelSettings;
@class AmPeriodSelector;
@class AmSerialChart;
@class AmStockEventSettings;
@class AmValueAxesSettings;
@class AmExport;
@class AmResponsive;

@interface AmStockChart : NSObject

/**
 Specifies, if class names should be added to chart elements.
 */
@property(assign) NSNumber * addClassNames;

/**
 AmExport object.
 */
@property(strong) AmExport * amExport;

/**
 Specifies if animation was already played. Animation is only played once, when chart is rendered for the first time. If you want the animation to be repeated, set this property to false.
 */
@property(assign) NSNumber * animationPlayed;

/**
 Balloon object.
 */
@property(strong) AmBalloon * balloon;

/**
 Settings for category axes.
 */
@property(strong) AmCategoryAxesSettings * categoryAxesSettings;

/**
 Read-only. Indicates if the chart is created.
 */
@property(assign) NSNumber * chartCreated;

/**
 Chart cursor settings.
 */
@property(strong) AmChartCursorSettings * chartCursorSettings;

/**
 Chart scrollbar settings.
 */
@property(strong) AmChartScrollbarSettings * chartScrollbarSettings;

/**
 This prefix is added to all class names which are added to all visual elements of a chart in case addClassNames is set to true.
 */
@property(strong) NSString * classNamePrefix;

/**
 Array of colors used by data sets if no color was set explicitly on data set itself.
 */
@property(strong) NSMutableArray * colors;

/**
 Array of data sets selected for comparing.
 */
@property(strong) NSMutableArray * comparedDataSets;

/**
 Data provider of data set can have dates as Date Objects or as Strings. In case you use strings, you need to set data date format and the chart will parse dates to date objects. Check this page for date formatting strings.
 */
@property(strong) NSString * dataDateFormat;

/**
 Array of DataSets.
 */
@property(strong) NSMutableArray * dataSets;

/**
 DataSetSelector object. You can add it if you have more than one data set and want users to be able to select/compare them.
 */
@property(strong) AmDataSetSelector * dataSetSelector;

/**
 Read-only. Current end date of the selected period, get only. To set start/end dates, use stockChart.zoom(startDate, endDate) method.
 */
@property(strong) NSDate * endDate;

/**
 Object of export config. Will enable saving chart as an image for all modern browsers except IE9 (IE10+ works fine).
 */
@property(strong) NSString * exportConfig;

/**
 Specifies if the chart should always display full first and last data item when data is grouped to a longer period if the chart is zoomed from the beginning or end of the data.
 */
@property(assign) NSNumber * extendToFullPeriod;

/**
 Defines on which day week starts. 0 - Sunday, 1 - Monday...
 */
@property(strong) NSNumber * firstDayOfWeek;

/**
 If set to true the scope of the data view will be set to the end after data update.
 */
@property(assign) NSNumber * glueToTheEnd;

/**
 Legend settings.
 */
@property(strong) AmLegendSettings * legendSettings;

/**
 Data set selected as main.
 */
@property(strong) AmDataSet * mainDataSet;

/**
 Specifies if scrolling of a chart with mouse wheel is enabled.
 */
@property(assign) NSNumber * mouseWheelScrollEnabled;

/**
 Array of StockPanels (charts).
 */
@property(strong) NSMutableArray * panels;

/**
 Settings for stock panels.
 */
@property(strong) AmPanelSettings * panelsSettings;

/**
 Specifies path to the folder where images like resize grips, lens and similar are.
 */
@property(strong) NSString * pathToImages;

/**
 Period selector object. You can add it if you want user's to be able to enter date ranges or zoom chart with predefined period buttons.
 */
@property(strong) AmPeriodSelector * periodSelector;

/**
 Object responsible for automatic plugin resizing
 */
@property(strong) AmResponsive * responsive;

/**
 Read-only. Scrollbar's chart object.
 */
@property(strong) AmSerialChart * scrollbarChart;

/**
 Read-only. Current start date of the selected period. To set start/end dates, use stockChart.zoom(startDate, endDate) method.
 */
@property(strong) NSDate * startDate;

/**
 Settings for stock events.
 */
@property(strong) AmStockEventSettings * stockEventsSettings;

/**
 You can set theme for all the charts on your page by setting: AmCharts.theme = AmCharts.themes.light; // or some other theme. If you are creating charts using JavaScript API, not JSON, then this is quite a comfortable way, as you won't need to pass theme to each object you create. Note, you should set theme before write method is called. There is no way to change theme of already created chart, you have to create chart's instance once more if you want to change theme.
 */
@property(strong) NSString *theme;

/**
 Read-only. Type of the chart.
 */
@property(strong) NSString * type;

/**
 Settings for value axes.
 */
@property(strong) AmValueAxesSettings * valueAxesSettings;

/**
 Read-only. Indicates current version of a script.
 */
@property(strong) NSString * version;

/**
 Specifies whether the chart should zoom-out when main data set is changed.
 */
@property(assign) NSNumber * zoomOutOnDataSetChange;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end