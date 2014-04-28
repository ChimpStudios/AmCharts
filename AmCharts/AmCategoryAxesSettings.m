// 
//  AmCategoryAxesSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmCategoryAxesSettings.h"
#import "AmCategories.h"


@implementation AmCategoryAxesSettings

- (id)init {
	self = [super init];
	if (self) {
		self.autoGridCount = true;
		self.axisAlpha = @(0);
		self.axisHeight = @(28);
		self.equalSpacing = false;
		self.gridCount = @(10);
		self.groupToPeriods = [@[@"ss", @"10ss", @"30ss", @"mm", @"10mm", @"30mm", @"hh", @"DD", @"WW", @"MM", @"YYYY"] mutableCopy];
		self.inside = false;
		self.labelsEnabled = true;
		self.markPeriodChange = true;
		self.maxSeries = @(150);
		self.minPeriod = @"DD";
		self.startOnAxis = false;
		self.tickLength = @(0);
		self.twoLineMode = false;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	[dictRep setObject:@(self.autoGridCount) forKey:@"autoGridCount"];

	if (self.axisAlpha) {
		[dictRep setObject:self.axisAlpha forKey:@"axisAlpha"];
	}

	if (self.axisColor) {
		[dictRep setObject:self.axisColor forKey:@"axisColor"];
	}

	if (self.axisHeight) {
		[dictRep setObject:self.axisHeight forKey:@"axisHeight"];
	}

	if (self.axisThickness) {
		[dictRep setObject:self.axisThickness forKey:@"axisThickness"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.dashLength) {
		[dictRep setObject:self.dashLength forKey:@"dashLength"];
	}

	if (self.dateFormats) {
		[dictRep setObject:self.dateFormats forKey:@"dateFormats"];
	}

	[dictRep setObject:@(self.equalSpacing) forKey:@"equalSpacing"];

	if (self.fillAlpha) {
		[dictRep setObject:self.fillAlpha forKey:@"fillAlpha"];
	}

	if (self.fillColor) {
		[dictRep setObject:self.fillColor forKey:@"fillColor"];
	}

	if (self.fontSize) {
		[dictRep setObject:self.fontSize forKey:@"fontSize"];
	}

	if (self.gridAlpha) {
		[dictRep setObject:self.gridAlpha forKey:@"gridAlpha"];
	}

	if (self.gridColor) {
		[dictRep setObject:self.gridColor forKey:@"gridColor"];
	}

	if (self.gridCount) {
		[dictRep setObject:self.gridCount forKey:@"gridCount"];
	}

	if (self.gridThickness) {
		[dictRep setObject:self.gridThickness forKey:@"gridThickness"];
	}

	if (self.groupToPeriods) {
		[dictRep setObject:self.groupToPeriods forKey:@"groupToPeriods"];
	}

	[dictRep setObject:@(self.inside) forKey:@"inside"];

	if (self.labelRotation) {
		[dictRep setObject:self.labelRotation forKey:@"labelRotation"];
	}

	[dictRep setObject:@(self.labelsEnabled) forKey:@"labelsEnabled"];

	[dictRep setObject:@(self.markPeriodChange) forKey:@"markPeriodChange"];

	if (self.maxSeries) {
		[dictRep setObject:self.maxSeries forKey:@"maxSeries"];
	}

	if (self.minPeriod) {
		[dictRep setObject:self.minPeriod forKey:@"minPeriod"];
	}

	if (self.position) {
		[dictRep setObject:self.position forKey:@"position"];
	}

	[dictRep setObject:@(self.startOnAxis) forKey:@"startOnAxis"];

	if (self.tickLength) {
		[dictRep setObject:self.tickLength forKey:@"tickLength"];
	}

	[dictRep setObject:@(self.twoLineMode) forKey:@"twoLineMode"];

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"categoryAxesSettings\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end