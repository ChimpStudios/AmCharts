//
//  ViewController.m
//  AmCharts iOS Example
//
//  Created by Andrew on 5/5/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self drawStockChart];
    //[self drawPieChart];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)drawPieChart {
    AmMobileChartView *chartView = [[AmMobileChartView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:chartView];
    
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
    
    // NSLog(@"\n%@", [pieChart javascriptRepresentation]);
    [chartView setChart:pieChart];
    [chartView drawChart];
}

- (void)drawStockChart
{
    
    AmMobileChartView *chartView = [[AmMobileChartView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:chartView];
    
    
    AmStockChart *stockChart = [[AmStockChart alloc] init];
    stockChart.type = @"stock";
    stockChart.pathToImages = @"amcharts/images/";
    stockChart.dataDateFormat = @"YYYY-MM-DD";
    AmDataSet *dataSet = [[AmDataSet alloc] init];
    
    NSMutableArray *dataProvider = [[NSMutableArray alloc] init];
    [dataProvider addObject:@{@"date": @"2011-06-01", @"val": @(5)}];
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
   // panel.legend = [[AmStockLegend alloc] init];
    panel.showCategoryAxis = @(true);
    
    AmStockGraph *stockGraph = [[AmStockGraph alloc] init];
    stockGraph.uid = @"graph1";
    stockGraph.valueField = @"value";
    stockGraph.type = @"line";
    stockGraph.title = @"MyGraph";
    stockGraph.fillAlphas = @(0.1);
    stockGraph.bullet = @"round";
    
    AmChartCursor *cursor = [[AmChartCursor alloc] init];
    cursor.selectWithoutZooming = @(NO);
    cursor.cursorPosition = @"mouse";
    cursor.zoomable = @(NO);
    panel.chartCursor = cursor;
    
    panel.stockGraphs = [@[stockGraph] mutableCopy];
    stockChart.panels = [@[panel] mutableCopy];
    
    stockChart.panelsSettings.startDuration = @(1);
    stockChart.categoryAxesSettings.dashLength = @(5);
    stockChart.valueAxesSettings.dashLength = @(5);
    stockChart.chartScrollbarSettings.enabled = @(NO);
  //  stockChart.chartScrollbarSettings.graph = @"graph1";
  //  stockChart.chartScrollbarSettings.graphType = @"line";
    
  //  AmPeriodSelector *periodSelector = [[AmPeriodSelector alloc] init];
  //  periodSelector.periods = [@[@{@"period" : @"DD", @"count" : @(1), @"label" : @"1 day"},
  //                              @{@"period" : @"DD", @"count" : @(5), @"label" : @"5 days"},
  //                              @{@"period" : @"MM", @"count" : @(1), @"label" : @"1 month"},
  //                              @{@"period" : @"YYYY", @"count" : @(1), @"label" : @"1 year"},
  //                              @{@"period" : @"YTD", @"label" : @"YTD"}] mutableCopy];
  //  stockChart.periodSelector = periodSelector;
    
    [chartView setChart:stockChart];
    [chartView drawChart];
    
    //NSLog(@"\n%@", [stockChart javascriptRepresentation]);
}

@end
