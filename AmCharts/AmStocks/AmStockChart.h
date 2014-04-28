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
@class AmPanelsSettings;
@class AmPeriodSelector;
@class AmSerialChart;
@class AmStockEventsSettings;
@class AmValueAxesSettings;

@interface AmStockChart : NSObject

/**
 Specifies if animation was already played. Animation is only played once, when chart is rendered for the first time. If you want the animation to be repeated, set this property to false.
 @version 3.4.8
 */
@property(assign) BOOL animationPlayed;

/**
 Balloon object.
 @version 3.4.8
 */
@property(strong) AmBalloon * balloon;

/**
 Settings for category axes.
 @version 3.4.8
 */
@property(strong) AmCategoryAxesSettings * categoryAxesSettings;

/**
 Read-only. Indicates if the chart is created.
 @version 3.4.8
 */
@property(assign) BOOL chartCreated;

/**
 Chart cursor settings.
 @version 3.4.8
 */
@property(strong) AmChartCursorSettings * chartCursorSettings;

/**
 Chart scrollbar settings.
 @version 3.4.8
 */
@property(strong) AmChartScrollbarSettings * chartScrollbarSettings;

/**
 Array of colors used by data sets if no color was set explicitly on data set itself.
 @version 3.4.8
 */
@property(strong) NSMutableArray * colors;

/**
 Array of data sets selected for comparing.
 @version 3.4.8
 */
@property(strong) NSMutableArray * comparedDataSets;

/**
 Data provider of data set can have dates as Date Objects or as Strings. In case you use strings, you need to set data date format and the chart will parse dates to date objects. Check this page for date formatting strings.
 @version 3.4.8
 */
@property(strong) NSString * dataDateFormat;

/**
 Array of DataSets.
 @version 3.4.8
 */
@property(strong) NSMutableArray * dataSets;

/**
 DataSetSelector object. You can add it if you have more than one data set and want users to be able to select/compare them.
 @version 3.4.8
 */
@property(strong) AmDataSetSelector * dataSetSelector;

/**
 Read-only. Current end date of the selected period, get only. To set start/end dates, use stockChart.zoom(startDate, endDate) method.
 @version 3.4.8
 */
@property(strong) NSDate * endDate;

/**
 Object of export config. Will enable saving chart as an image for all modern browsers except IE9 (IE10+ works fine).
 @version 3.4.8
 */
@property(strong) NSString * exportConfig;

/**
 Defines on which day week starts. 0 - Sunday, 1 - Monday...
 @version 3.4.8
 */
@property(strong) NSNumber * firstDayOfWeek;

/**
 If set to true the scope of the data view will be set to the end after data update.
 @version 3.4.8
 */
@property(assign) BOOL glueToTheEnd;

/**
 Legend settings.
 @version 3.4.8
 */
@property(strong) AmLegendSettings * legendSettings;

/**
 Data set selected as main.
 @version 3.4.8
 */
@property(strong) AmDataSet * mainDataSet;

/**
 Specifies if scrolling of a chart with mouse wheel is enabled.
 @version 3.4.8
 */
@property(assign) BOOL mouseWheelScrollEnabled;

/**
 Array of StockPanels (charts).
 @version 3.4.8
 */
@property(strong) NSMutableArray * panels;

/**
 Settings for stock panels.
 @version 3.4.8
 */
@property(strong) AmPanelsSettings * panelsSettings;

/**
 Specifies path to the folder where images like resize grips, lens and similar are.
 @version 3.4.8
 */
@property(strong) NSString * pathToImages;

/**
 Period selector object. You can add it if you want user's to be able to enter date ranges or zoom chart with predefined period buttons.
 @version 3.4.8
 */
@property(strong) AmPeriodSelector * periodSelector;

/**
 Read-only. Scrollbar's chart object.
 @version 3.4.8
 */
@property(strong) AmSerialChart * scrollbarChart;

/**
 Read-only. Current start date of the selected period. To set start/end dates, use stockChart.zoom(startDate, endDate) method.
 @version 3.4.8
 */
@property(strong) NSDate * startDate;

/**
 Settings for stock events.
 @version 3.4.8
 */
@property(strong) AmStockEventsSettings * stockEventsSettings;

/**
 Read-only. Type of the chart.
 @version 3.4.8
 */
@property(strong) NSString * type;

/**
 Settings for value axes.
 @version 3.4.8
 */
@property(strong) AmValueAxesSettings * valueAxesSettings;

/**
 Read-only. Indicates current version of a script.
 @version 3.4.8
 */
@property(strong) NSString * version;

/**
 Specifies whether the chart should zoom-out when main data set is changed.
 @version 3.4.8
 */
@property(assign) BOOL zoomOutOnDataSetChange;

@end