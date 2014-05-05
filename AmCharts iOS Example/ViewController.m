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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
