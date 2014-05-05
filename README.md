AmCharts
========

This is a Native Objective C wrapper for the AmCharts javascript charting library.  Both OS X and iOS are supported.  Use the AmCharts.Framework when working with OS X and the AmChartsMobile.a static library when targeting iOS.

## Screenshot
![AmCharts in Cocoa App](https://raw.githubusercontent.com/ChimpStudios/AmCharts/master/Readme/AmCharts%20Cocoa.png)

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

##### Line Chart

## Legal
The source for AmChartsLibrary (the objective-c wrapper) is released under the MIT license.  The original AmCharts javascript core is maintained under a separate license.  Check http://www.amcharts.com/online-store/ for further information.