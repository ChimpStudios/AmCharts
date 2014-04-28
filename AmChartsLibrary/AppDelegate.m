//
//  AppDelegate.m
//  AmChartsLibrary
//
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
//

#import "AppDelegate.h"
#import "AmSerialChart.h"
#import "AmCategoryAxis.h"
#import "AmValueAxis.h"
#import "AmGraph.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    AmSerialChart *chart = [[AmSerialChart alloc] init];
    chart.type = @"serial";
    chart.dataProvider = [@[@{@"year" : @"2005", @"income" : @"23.5"},
                           @{@"year" : @"2006", @"income" : @"26.2"},
                            @{@"year" : @"2007", @"income" : @"30.1"},
                            @{@"year" : @"2008", @"income" : @"32.0"},
                            @{@"year" : @"2009", @"income" : @"31.6"},
                            @{@"year" : @"2010", @"income" : @"33.4"}] mutableCopy];
    chart.categoryField = @"year";
    chart.rotate = YES;
    chart.categoryAxis.gridPosition = @"start";
    chart.categoryAxis.axisColor = @"#DADADA";
    AmValueAxis *valAxis = [[AmValueAxis alloc] init];
    valAxis.axisAlpha = @(0.2);
    chart.valueAxes = [@[[valAxis dictionaryRepresentation]] mutableCopy];
    chart.balloon = nil;
    AmGraph *graph = [[AmGraph alloc] init];
    graph.type = @"column";
    graph.title = @"Income";
    graph.valueField = @"income";
    graph.lineAlpha = @(0);
    graph.fillColors = @"#ADD981";
    graph.fillAlphas = @(0.8);
    graph.balloonText = @"[[title]] in [[category]]:<b>[[value]]</b>";
    chart.graphs = [@[[graph dictionaryRepresentation]] mutableCopy];
    
    NSLog(@"\n%@", [chart javascriptRepresentation]);
}

@end
