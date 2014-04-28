// 
//  AmChartScrollbarSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmChartScrollbarSettings.h"
#import "AmCategories.h"
#import "AmGraph.h"


@implementation AmChartScrollbarSettings

- (id)init {
	self = [super init];
	if (self) {
		self.autoGridCount = true;
		self.dragIconHeight = @(18);
		self.dragIconWidth = @(11);
		self.enabled = true;
		self.height = @(40);
		self.hideResizeGrips = false;
		self.position = @"bottom";
		self.updateOnReleaseOnly = true;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	[dictRep setObject:@(self.autoGridCount) forKey:@"autoGridCount"];

	if (self.backgroundAlpha) {
		[dictRep setObject:self.backgroundAlpha forKey:@"backgroundAlpha"];
	}

	if (self.backgroundColor) {
		[dictRep setObject:self.backgroundColor forKey:@"backgroundColor"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.dragIconHeight) {
		[dictRep setObject:self.dragIconHeight forKey:@"dragIconHeight"];
	}

	if (self.dragIconWidth) {
		[dictRep setObject:self.dragIconWidth forKey:@"dragIconWidth"];
	}

	[dictRep setObject:@(self.enabled) forKey:@"enabled"];

	if (self.fontSize) {
		[dictRep setObject:self.fontSize forKey:@"fontSize"];
	}

	if (self.graph) {
		[dictRep setObject:[self.graph javascriptRepresentation] forKey:@"graph"];
	}

	if (self.graphFillAlpha) {
		[dictRep setObject:self.graphFillAlpha forKey:@"graphFillAlpha"];
	}

	if (self.graphFillColor) {
		[dictRep setObject:self.graphFillColor forKey:@"graphFillColor"];
	}

	if (self.graphLineAlpha) {
		[dictRep setObject:self.graphLineAlpha forKey:@"graphLineAlpha"];
	}

	if (self.graphLineColor) {
		[dictRep setObject:self.graphLineColor forKey:@"graphLineColor"];
	}

	if (self.graphType) {
		[dictRep setObject:self.graphType forKey:@"graphType"];
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

	if (self.height) {
		[dictRep setObject:self.height forKey:@"height"];
	}

	[dictRep setObject:@(self.hideResizeGrips) forKey:@"hideResizeGrips"];

	[dictRep setObject:@(self.markPeriodChange) forKey:@"markPeriodChange"];

	if (self.position) {
		[dictRep setObject:self.position forKey:@"position"];
	}

	if (self.scrollDuration) {
		[dictRep setObject:self.scrollDuration forKey:@"scrollDuration"];
	}

	if (self.selectedBackgroundAlpha) {
		[dictRep setObject:self.selectedBackgroundAlpha forKey:@"selectedBackgroundAlpha"];
	}

	if (self.selectedBackgroundColor) {
		[dictRep setObject:self.selectedBackgroundColor forKey:@"selectedBackgroundColor"];
	}

	if (self.selectedGraphFillAlpha) {
		[dictRep setObject:self.selectedGraphFillAlpha forKey:@"selectedGraphFillAlpha"];
	}

	if (self.selectedGraphFillColor) {
		[dictRep setObject:self.selectedGraphFillColor forKey:@"selectedGraphFillColor"];
	}

	if (self.selectedGraphLineAlpha) {
		[dictRep setObject:self.selectedGraphLineAlpha forKey:@"selectedGraphLineAlpha"];
	}

	if (self.selectedGraphLineColor) {
		[dictRep setObject:self.selectedGraphLineColor forKey:@"selectedGraphLineColor"];
	}

	[dictRep setObject:@(self.updateOnReleaseOnly) forKey:@"updateOnReleaseOnly"];

	if (self.usePeriod) {
		[dictRep setObject:self.usePeriod forKey:@"usePeriod"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"chartScrollbarSettings\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end