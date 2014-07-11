// 
//  AmChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmChart.h"
#import "AmCategories.h"
#import "AmBalloon.h"
#import "AmLegend.h"
#import "AmTitle.h"
#import "AmLabel.h"
#import "AmExport.h"

@implementation AmChart

- (id)init {
	self = [super init];
	if (self) {
//		self.allLabels = [@[] mutableCopy];
//		self.backgroundAlpha = @(0);
//		self.backgroundColor = @"#FFFFFF";
		self.balloon = [[AmBalloon alloc] init];
//		self.borderAlpha = @(0);
//		self.borderColor = @"#000000";
//		//self.color = @"#000000";
//		self.creditsPosition = @"top-left";
//		self.decimalSeparator = @".";
//		self.fontFamily = @"Verdana";
//		self.fontSize = @(11);
//		self.handDrawn = false;
//		self.handDrawScatter = @(2);
//		self.handDrawThickness = @(1);
//		self.hideBalloonTime = @(150);
		self.panEventsEnabled = true;
//		self.percentPrecision = @(2);
//		self.precision = @(-1);
//        self.prefixesOfBigNumbers = [@[
//                                       @{@"number":@"1e+3",@"prefix":@"k"},
//                                       @{@"number":@"1e+6",@"prefix":@"M"},
//                                       @{@"number":@"1e+9",@"prefix":@"G"},
//                                       @{@"number":@"1e+12",@"prefix":@"T"},
//                                       @{@"number":@"1e+15",@"prefix":@"P"},
//                                       @{@"number":@"1e+18",@"prefix":@"E"},
//                                       @{@"number":@"1e+21",@"prefix":@"Z"},
//                                       @{@"number":@"1e+24",@"prefix":@"Y"}
//                                       ] mutableCopy];
//		self.prefixesOfSmallNumbers = [@[
//                                         @{@"number":@"1e-24", @"prefix":@"y"},
//                                         @{@"number":@"1e-21", @"prefix":@"z"},
//                                         @{@"number":@"1e-18", @"prefix":@"a"},
//                                         @{@"number":@"1e-15", @"prefix":@"f"},
//                                         @{@"number":@"1e-12", @"prefix":@"p"},
//                                         @{@"number":@"1e-9", @"prefix":@"n"},
//                                         @{@"number":@"1e-6", @"prefix":@"μ"},
//                                         @{@"number":@"1e-3", @"prefix":@"m"}
//                                         ] mutableCopy];
//		self.theme = @"none";
//		self.thousandsSeparator = @",";
//		self.titles = [@[] mutableCopy];
//		self.usePrefixes = false;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.allLabels) {
        NSMutableArray *tmpArr = [[NSMutableArray alloc] initWithCapacity:self.allLabels.count];
        for (AmLabel *label in self.allLabels) {
            // only add appropriate class items
            if ([label.class isSubclassOfClass:[AmLabel class]]) {
                [tmpArr addObject:[label dictionaryRepresentation]];
            }
        }
		[dictRep setObject:tmpArr forKey:@"allLabels"];
	}
    
    if (self.amExport) {
        [dictRep setObject:[self.amExport dictionaryRepresentation] forKey:@"amExport"];
    }

	if (self.backgroundAlpha) {
		[dictRep setObject:self.backgroundAlpha forKey:@"backgroundAlpha"];
	}

	if (self.backgroundColor) {
		[dictRep setObject:self.backgroundColor forKey:@"backgroundColor"];
	}

	if (self.balloon) {
		[dictRep setObject:[self.balloon dictionaryRepresentation] forKey:@"balloon"];
	}

	if (self.borderAlpha) {
		[dictRep setObject:self.borderAlpha forKey:@"borderAlpha"];
	}

	if (self.borderColor) {
		[dictRep setObject:self.borderColor forKey:@"borderColor"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.creditsPosition) {
		[dictRep setObject:self.creditsPosition forKey:@"creditsPosition"];
	}

	if (self.dataProvider) {
		[dictRep setObject:self.dataProvider forKey:@"dataProvider"];
	}

	if (self.decimalSeparator) {
		[dictRep setObject:self.decimalSeparator forKey:@"decimalSeparator"];
	}

	if (self.exportConfig) {
		[dictRep setObject:self.exportConfig forKey:@"exportConfig"];
	}

	if (self.fontFamily) {
		[dictRep setObject:self.fontFamily forKey:@"fontFamily"];
	}

	if (self.fontSize) {
		[dictRep setObject:self.fontSize forKey:@"fontSize"];
	}

	[dictRep setObject:@(self.handDrawn) forKey:@"handDrawn"];

	if (self.handDrawScatter) {
		[dictRep setObject:self.handDrawScatter forKey:@"handDrawScatter"];
	}

	if (self.handDrawThickness) {
		[dictRep setObject:self.handDrawThickness forKey:@"handDrawThickness"];
	}

	if (self.hideBalloonTime) {
		[dictRep setObject:self.hideBalloonTime forKey:@"hideBalloonTime"];
	}

	if (self.legend) {
		[dictRep setObject:[self.legend dictionaryRepresentation] forKey:@"legend"];
	}

	if (self.legendDiv) {
		[dictRep setObject:self.legendDiv forKey:@"legendDiv"];
	}

	[dictRep setObject:@(self.panEventsEnabled) forKey:@"panEventsEnabled"];

	if (self.pathToImages) {
		[dictRep setObject:self.pathToImages forKey:@"pathToImages"];
	}

	if (self.percentPrecision) {
		[dictRep setObject:self.percentPrecision forKey:@"percentPrecision"];
	}

	if (self.precision) {
		[dictRep setObject:self.precision forKey:@"precision"];
	}

	if (self.prefixesOfBigNumbers) {
		[dictRep setObject:self.prefixesOfBigNumbers forKey:@"prefixesOfBigNumbers"];
	}

	if (self.prefixesOfSmallNumbers) {
		[dictRep setObject:self.prefixesOfSmallNumbers forKey:@"prefixesOfSmallNumbers"];
	}

	if (self.theme) {
		[dictRep setObject:self.theme forKey:@"theme"];
	}

	if (self.thousandsSeparator) {
		[dictRep setObject:self.thousandsSeparator forKey:@"thousandsSeparator"];
	}

	if (self.titles) {
        NSMutableArray *tmpArr = [[NSMutableArray alloc] initWithCapacity:self.titles.count];
        for (AmTitle *title in self.titles) {
            // only add appropriate class items
            if ([title.class isSubclassOfClass:[AmTitle class]]) {
                [tmpArr addObject:[title dictionaryRepresentation]];
            }
        }
		[dictRep setObject:tmpArr forKey:@"titles"];
	}

	if (self.type) {
		[dictRep setObject:self.type forKey:@"type"];
	}

	[dictRep setObject:@(self.usePrefixes) forKey:@"usePrefixes"];

	if (self.version) {
		[dictRep setObject:self.version forKey:@"version"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"%@", [dictRep JSONString]];
	return jsonRep;
}

@end