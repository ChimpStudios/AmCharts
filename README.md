AmCharts
========

This is a Native Objective C wrapper for the AmCharts javascript charting library.  Both OS X and iOS are supported.  Use the AmCharts.Framework when working with OS X and the AmChartsMobile.a static library when targeting iOS.

## Screenshot
![AmCharts in Cocoa App](https://raw.githubusercontent.com/ChimpStudios/AmCharts/master/Readme/Line%20Chart.png)

## Getting Started

### OS X

### iOS

## Generating Charts

Once the AmChart framework or library is included in your project.  Generating a chart is very simple.  Here are some examples of common charts.

##### Pie Chart

```objective-c
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

// where self.chartView references an AmChartView *
[self.chartView setChart:pieChart];
[self.chartView drawChart];
```
![AmCharts in Cocoa App](https://raw.githubusercontent.com/ChimpStudios/AmCharts/master/Readme/Pie%20Chart.png)


##### Bar Chart
This code:

```objective-c
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
```
produces this bar chart:
![AmCharts in Cocoa App](https://raw.githubusercontent.com/ChimpStudios/AmCharts/master/Readme/Bar%20Chart.png)

## Legal
The source for AmChartsLibrary (the objective-c wrapper) is released under the MIT license.  The original AmCharts javascript core is maintained under a separate license.  Check http://www.amcharts.com/online-store/ for further information.