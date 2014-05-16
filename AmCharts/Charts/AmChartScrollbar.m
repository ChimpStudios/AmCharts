// 
//  AmChartScrollbar.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmChartScrollbar.h"
#import "AmCategories.h"
#import "AmCategoryAxis.h"
#import "AmGraph.h"


@implementation AmChartScrollbar

- (id)init {
	self = [super init];
	if (self) {
		//self.autoGridCount = false;
		//self.backgroundAlpha = @(1);
		//self.backgroundColor = @"#D4D4D4";
		//self.color = @"#FFFFFF";
		//self.dragIconHeight = @(25);
		//self.dragIconWidth = @(18);
		//self.graphFillAlpha = @(1);
		//self.graphFillColor = @"#BBBBBB";
		//self.graphLineAlpha = @(0);
		//self.graphLineColor = @"#BBBBBB";
		//self.gridAlpha = @(0.7);
		//self.gridColor = @"#FFFFFF";
		//self.gridCount = @(0);
		//self.hideResizeGrips = false;
		//self.offset = @(0);
		self.resizeEnabled = true;
		//self.scrollbarHeight = @(20);
		//self.scrollDuration = @(1);
		//self.selectedBackgroundAlpha = @(1);
		//self.selectedBackgroundColor = @"#EFEFEF";
		//self.selectedGraphFillAlpha = @(1);
		//self.selectedGraphFillColor = @"#888888";
		//self.selectedGraphLineAlpha = @(0);
		//self.selectedGraphLineColor = @"#888888";
		//self.updateOnReleaseOnly = false;
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

	if (self.categoryAxis) {
		[dictRep setObject:[self.categoryAxis dictionaryRepresentation] forKey:@"categoryAxis"];
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

	if (self.graph) {
		[dictRep setObject:[self.graph dictionaryRepresentation] forKey:@"graph"];
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

	[dictRep setObject:@(self.hideResizeGrips) forKey:@"hideResizeGrips"];

	if (self.maximum) {
		[dictRep setObject:self.maximum forKey:@"maximum"];
	}

	if (self.minimum) {
		[dictRep setObject:self.minimum forKey:@"minimum"];
	}

	if (self.offset) {
		[dictRep setObject:self.offset forKey:@"offset"];
	}

	[dictRep setObject:@(self.resizeEnabled) forKey:@"resizeEnabled"];

	if (self.scrollbarHeight) {
		[dictRep setObject:self.scrollbarHeight forKey:@"scrollbarHeight"];
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

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"chartScrollbar\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end