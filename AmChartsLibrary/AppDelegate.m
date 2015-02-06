//
//  AppDelegate.m
//  AmChartsLibrary
//
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
//

#import "AppDelegate.h"
#import <AmCharts/AmCharts.h>

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    [self drawSerialChart];
    [self drawStockChart];
    [self drawPieChart];
    [self drawMap];
}

- (void)drawSerialChart
{
    AmSerialChart *chart = [[AmSerialChart alloc] init];
    chart.type = @"serial";
    chart.dataProvider = [@[@{@"year" : @"2005", @"income" : @"23.5"},
                            @{@"year" : @"2006", @"income" : @"26.2"},
                            @{@"year" : @"2007", @"income" : @"30.1"},
                            @{@"year" : @"2008", @"income" : @"32.0"},
                            @{@"year" : @"2009", @"income" : @"31.6"},
                            @{@"year" : @"2010", @"income" : @"33.4"},
                            @{@"year" : @"2011", @"income" : @"34.3"},
                            @{@"year" : @"2012", @"income" : @"34.9"},
                            @{@"year" : @"2013", @"income" : @"35.7"}] mutableCopy];
    chart.categoryField = @"year";
    //chart.rotate = YES;
    chart.categoryAxis.gridPosition = @"start";
    chart.categoryAxis.axisColor = @"#DADADA";
    AmValueAxis *valAxis = [[AmValueAxis alloc] init];
    valAxis.axisAlpha = @(0.2);
    chart.valueAxes = [@[valAxis] mutableCopy];
    chart.balloon = nil;
    AmGraph *graph = [[AmGraph alloc] init];
    graph.type = @"column";
    graph.title = @"Income";
    graph.valueField = @"income";
    graph.lineAlpha = @(0);
    graph.fillColors = @"#ADD981";
    graph.fillAlphas = @(0.8);
    graph.balloonText = @"[[title]] in [[category]]:<b>[[value]]</b>";
    chart.graphs = [@[graph] mutableCopy];
    
    [self.chartView setChart:chart];
    [self.chartView drawChart];
    
    // NSLog(@"\n%@", [chart javascriptRepresentation]);
}

- (void)drawStockChart
{
    AmStockChart *stockChart = [[AmStockChart alloc] init];
    stockChart.type = @"stock";
    stockChart.pathToImages = @"amcharts/images/";
    stockChart.dataDateFormat = @"YYYY-MM-DD";
    AmDataSet *dataSet = [[AmDataSet alloc] init];
    
    NSMutableArray *dataProvider = [[NSMutableArray alloc] init];
    [dataProvider addObject:@{@"date": @"2011-06-01", @"val": @(10)}];
    [dataProvider addObject:@{@"date": @"2011-06-02", @"val": @(11)}];
    [dataProvider addObject:@{@"date": @"2011-06-03", @"val": @(12)}];
    [dataProvider addObject:@{@"date": @"2011-06-04", @"val": @(11)}];
    [dataProvider addObject:@{@"date": @"2011-06-05", @"val": @(10)}];
    [dataProvider addObject:@{@"date": @"2011-06-06", @"val": @(11)}];
    [dataProvider addObject:@{@"date": @"2011-06-07", @"val": @(13)}];
    [dataProvider addObject:@{@"date": @"2011-06-08", @"val": @(14)}];
    [dataProvider addObject:@{@"date": @"2011-06-09", @"val": @(17)}];
    [dataProvider addObject:@{@"date": @"2011-06-10", @"val": @(13)}];
    dataSet.dataProvider = dataProvider;
    dataSet.fieldMappings = [@[@{@"fromField" : @"val", @"toField" : @"value"}] mutableCopy];
    dataSet.categoryField = @"date";
    
    stockChart.dataSets = [@[dataSet] mutableCopy];
    
    AmStockPanel *panel = [[AmStockPanel alloc] init];
    panel.legend = [[AmStockLegend alloc] init];
    
    AmStockGraph *stockGraph = [[AmStockGraph alloc] init];
    stockGraph.uid = @"graph1";
    stockGraph.valueField = @"value";
    stockGraph.type = @"line";
    stockGraph.title = @"MyGraph";
    stockGraph.fillAlphas = @(0.1);
    panel.stockGraphs = [@[stockGraph] mutableCopy];
    stockChart.panels = [@[panel] mutableCopy];
    
    stockChart.panelsSettings.startDuration = @(1);
    stockChart.categoryAxesSettings.dashLength = @(5);
    stockChart.valueAxesSettings.dashLength = @(5);
    stockChart.chartScrollbarSettings.graph = @"graph1";
    stockChart.chartScrollbarSettings.graphType = @"line";
    
    AmPeriodSelector *periodSelector = [[AmPeriodSelector alloc] init];
    periodSelector.periods = [@[@{@"period" : @"DD", @"count" : @(1), @"label" : @"1 day"},
                                @{@"period" : @"DD", @"count" : @(5), @"label" : @"5 days"},
                                @{@"period" : @"MM", @"count" : @(1), @"label" : @"1 month"},
                                @{@"period" : @"YYYY", @"count" : @(1), @"label" : @"1 year"},
                                @{@"period" : @"YTD", @"label" : @"YTD"}] mutableCopy];
    stockChart.periodSelector = periodSelector;
    
    [self.chartVw2 setChart:stockChart];
    [self.chartVw2 drawChart];
    
    //NSLog(@"\n%@", [stockChart javascriptRepresentation]);
}

- (void)drawPieChart
{
    AmPieChart *pieChart = [[AmPieChart alloc] init];
    pieChart.type = @"pie";
    pieChart.theme = @"none";
    NSMutableArray *dataProvider = [[NSMutableArray alloc] init];
    [dataProvider addObject:@{@"country" : @"Lithuania", @"litres" : @(501.9)}];
    [dataProvider addObject:@{@"country" : @"Czech Republic", @"litres" : @(301.9)}];
    [dataProvider addObject:@{@"country" : @"Ireland", @"litres" : @(201.1)}];
    pieChart.dataProvider = dataProvider;
    
    pieChart.valueField = @"litres";
    pieChart.titleField = @"country";
    
    [self.chartVw3 setChart:pieChart];
    [self.chartVw3 drawChart];
}

- (void)drawMap
{
    AmMap *map = [[AmMap alloc] init];
    map.type = @"map";
    map.theme = @"none";
    map.pathToImages = @"ammap/images/";
    
    AmMapData *mapData = [[AmMapData alloc] init];
    mapData.map = @"worldLow";
    mapData.getAreasFromMap = true;
    
    map.mapDataProvider = mapData;
    
    AmAreasSettings *areaSettings = [[AmAreasSettings alloc] init];
    areaSettings.autoZoom = true;
    areaSettings.selectedColor = @"#CC0000";
    
    AmSmallMap *smallMap = [[AmSmallMap alloc] init];
    
    map.smallMap = smallMap;
    
    [self.chartVw4 setChart:map];
    [self.chartVw4 drawChart];
}

@end
