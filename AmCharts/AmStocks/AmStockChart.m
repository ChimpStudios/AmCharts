// 
//  AmStockChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmStockChart.h"
#import "AmCategories.h"
#import "AmBalloon.h"
#import "AmCategoryAxesSettings.h"
#import "AmChartCursorSettings.h"
#import "AmChartScrollbarSettings.h"
#import "AmDataSetSelector.h"
#import "AmLegendSettings.h"
#import "AmDataSet.h"
#import "AmPanelSettings.h"
#import "AmPeriodSelector.h"
#import "AmSerialChart.h"
#import "AmStockEventSettings.h"
#import "AmValueAxesSettings.h"
#import "AmStockPanel.h"

@implementation AmStockChart

- (id)init {
	self = [super init];
	if (self) {
		self.balloon = [[AmBalloon alloc] init];
		self.categoryAxesSettings = [[AmCategoryAxesSettings alloc] init];
		self.chartCursorSettings = [[AmChartCursorSettings alloc] init];
		self.chartScrollbarSettings = [[AmChartScrollbarSettings alloc] init];
		//self.colors = [@[@"#FF6600", @"#FCD202", @"#B0DE09", @"#0D8ECF", @"#2A0CD0", @"#CD0D74", @"#CC0000", @"#00CC00", @"#0000CC", @"#DDDDDD", @"#999999", @"#333333", @"#990000"] mutableCopy];
//		self.firstDayOfWeek = @(1);
//		self.glueToTheEnd = false;
		self.legendSettings = [[AmLegendSettings alloc] init];
		//self.mouseWheelScrollEnabled = false;
		self.panelsSettings = [[AmPanelSettings alloc] init];
		self.stockEventsSettings = [[AmStockEventSettings alloc] init];
//        self.theme = @"none";
		self.valueAxesSettings = [[AmValueAxesSettings alloc] init];
//		self.zoomOutOnDataSetChange = false;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	[dictRep setObject:@(self.animationPlayed) forKey:@"animationPlayed"];

	if (self.balloon) {
		[dictRep setObject:[self.balloon dictionaryRepresentation] forKey:@"balloon"];
	}

	if (self.categoryAxesSettings) {
		[dictRep setObject:[self.categoryAxesSettings dictionaryRepresentation] forKey:@"categoryAxesSettings"];
	}

	[dictRep setObject:@(self.chartCreated) forKey:@"chartCreated"];

	if (self.chartCursorSettings) {
		[dictRep setObject:[self.chartCursorSettings dictionaryRepresentation] forKey:@"chartCursorSettings"];
	}

	if (self.chartScrollbarSettings) {
		[dictRep setObject:[self.chartScrollbarSettings dictionaryRepresentation] forKey:@"chartScrollbarSettings"];
	}

	if (self.colors && (!self.theme || [self.theme.lowercaseString isEqualToString:@"none"])) {
		[dictRep setObject:self.colors forKey:@"colors"];
	}

	if (self.comparedDataSets) {
        NSMutableArray *tmpArr = [[NSMutableArray alloc] initWithCapacity:self.comparedDataSets.count];
        for (AmDataSet *dataSet in self.comparedDataSets) {
            // only add appropriate class items
            if ([dataSet.class isSubclassOfClass:[AmDataSet class]]) {
                [tmpArr addObject:[dataSet dictionaryRepresentation]];
            }
        }
		[dictRep setObject:tmpArr forKey:@"comparedDataSets"];
	}

	if (self.dataDateFormat) {
		[dictRep setObject:self.dataDateFormat forKey:@"dataDateFormat"];
	}

	if (self.dataSets) {
        NSMutableArray *tmpArr = [[NSMutableArray alloc] initWithCapacity:self.dataSets.count];
        for (AmDataSet *dataSet in self.dataSets) {
            // only add appropriate class items
            if ([dataSet.class isSubclassOfClass:[AmDataSet class]]) {
                [tmpArr addObject:[dataSet dictionaryRepresentation]];
            }
        }
		[dictRep setObject:tmpArr forKey:@"dataSets"];
	}

	if (self.dataSetSelector) {
		[dictRep setObject:[self.dataSetSelector dictionaryRepresentation] forKey:@"dataSetSelector"];
	}

	if (self.endDate) {
		[dictRep setObject:self.endDate forKey:@"endDate"];
	}

	if (self.exportConfig) {
		[dictRep setObject:self.exportConfig forKey:@"exportConfig"];
	}

	if (self.firstDayOfWeek) {
		[dictRep setObject:self.firstDayOfWeek forKey:@"firstDayOfWeek"];
	}

	[dictRep setObject:@(self.glueToTheEnd) forKey:@"glueToTheEnd"];

	if (self.legendSettings) {
		[dictRep setObject:[self.legendSettings dictionaryRepresentation] forKey:@"legendSettings"];
	}

	if (self.mainDataSet) {
		[dictRep setObject:[self.mainDataSet dictionaryRepresentation] forKey:@"mainDataSet"];
	}

	[dictRep setObject:@(self.mouseWheelScrollEnabled) forKey:@"mouseWheelScrollEnabled"];

	if (self.panels) {
        NSMutableArray *tmpArr = [[NSMutableArray alloc] initWithCapacity:self.panels.count];
        for (AmStockPanel *stockPanel in self.panels) {
            // only add appropriate class items
            if ([stockPanel.class isSubclassOfClass:[AmStockPanel class]]) {
                [tmpArr addObject:[stockPanel dictionaryRepresentation]];
            }
        }
		[dictRep setObject:tmpArr forKey:@"panels"];
	}

	if (self.panelsSettings) {
		[dictRep setObject:[self.panelsSettings dictionaryRepresentation] forKey:@"panelsSettings"];
	}

	if (self.pathToImages) {
		[dictRep setObject:self.pathToImages forKey:@"pathToImages"];
	}

	if (self.periodSelector) {
		[dictRep setObject:[self.periodSelector dictionaryRepresentation] forKey:@"periodSelector"];
	}

	if (self.scrollbarChart) {
		[dictRep setObject:[self.scrollbarChart dictionaryRepresentation] forKey:@"scrollbarChart"];
	}

	if (self.startDate) {
		[dictRep setObject:self.startDate forKey:@"startDate"];
	}

	if (self.stockEventsSettings) {
		[dictRep setObject:[self.stockEventsSettings dictionaryRepresentation] forKey:@"stockEventsSettings"];
	}

    if (self.theme) {
		[dictRep setObject:self.theme forKey:@"theme"];
	}
    
	if (self.type) {
		[dictRep setObject:self.type forKey:@"type"];
	}

	if (self.valueAxesSettings) {
		[dictRep setObject:[self.valueAxesSettings dictionaryRepresentation] forKey:@"valueAxesSettings"];
	}

	if (self.version) {
		[dictRep setObject:self.version forKey:@"version"];
	}

	[dictRep setObject:@(self.zoomOutOnDataSetChange) forKey:@"zoomOutOnDataSetChange"];

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];
    return [dictRep JSONString];
}

@end