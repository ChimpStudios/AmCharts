// 
//  AmLegend.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmLegend.h"
#import "AmCategories.h"


@implementation AmLegend

- (id)init {
	self = [super init];
	if (self) {
		self.align = @"left";
		self.autoMargins = true;
		self.backgroundAlpha = @(0);
		self.backgroundColor = @"#FFFFFF";
		self.borderAlpha = @(0);
		self.borderColor = @"#000000";
		self.color = @"#000000";
		self.equalWidths = true;
		self.fontSize = @(11);
		self.horizontalGap = @(0);
		self.labelText = @"[[title]]";
		self.marginBottom = @(0);
		self.marginLeft = @(20);
		self.marginRight = @(20);
		self.marginTop = @(0);
		self.markerBorderAlpha = @(1);
		self.markerBorderThickness = @(1);
		self.markerDisabledColor = @"#AAB3B3";
		self.markerLabelGap = @(5);
		self.markerSize = @(16);
		self.markerType = @"square";
		self.position = @"bottom";
		self.reversedOrder = false;
		self.rollOverColor = @"#CC0000";
		self.rollOverGraphAlpha = @(1);
		self.showEntries = true;
		self.spacing = @(10);
		self.switchable = true;
		self.switchColor = @"#FFFFFF";
		self.switchType = @"x";
		self.textClickEnabled = false;
		self.useGraphSettings = false;
		self.useMarkerColorForLabels = false;
		self.useMarkerColorForValues = false;
		self.valueAlign = @"right";
		self.valueText = @"[[value]]";
		self.valueWidth = @(50);
		self.verticalGap = @(10);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.align) {
		[dictRep setObject:self.align forKey:@"align"];
	}

	[dictRep setObject:@(self.autoMargins) forKey:@"autoMargins"];

	if (self.backgroundAlpha) {
		[dictRep setObject:self.backgroundAlpha forKey:@"backgroundAlpha"];
	}

	if (self.backgroundColor) {
		[dictRep setObject:self.backgroundColor forKey:@"backgroundColor"];
	}

	if (self.borderAlpha) {
		[dictRep setObject:self.borderAlpha forKey:@"borderAlpha"];
	}

	if (self.borderColor) {
		[dictRep setObject:self.borderColor forKey:@"borderColor"];
	}

	if (self.bottom) {
		[dictRep setObject:self.bottom forKey:@"bottom"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.data) {
		[dictRep setObject:self.data forKey:@"data"];
	}

	if (self.divId) {
		[dictRep setObject:self.divId forKey:@"divId"];
	}

	[dictRep setObject:@(self.equalWidths) forKey:@"equalWidths"];

	if (self.fontSize) {
		[dictRep setObject:self.fontSize forKey:@"fontSize"];
	}

	if (self.horizontalGap) {
		[dictRep setObject:self.horizontalGap forKey:@"horizontalGap"];
	}

	if (self.labelText) {
		[dictRep setObject:self.labelText forKey:@"labelText"];
	}

	if (self.left) {
		[dictRep setObject:self.left forKey:@"left"];
	}

	if (self.marginBottom) {
		[dictRep setObject:self.marginBottom forKey:@"marginBottom"];
	}

	if (self.marginLeft) {
		[dictRep setObject:self.marginLeft forKey:@"marginLeft"];
	}

	if (self.marginRight) {
		[dictRep setObject:self.marginRight forKey:@"marginRight"];
	}

	if (self.marginTop) {
		[dictRep setObject:self.marginTop forKey:@"marginTop"];
	}

	if (self.markerBorderAlpha) {
		[dictRep setObject:self.markerBorderAlpha forKey:@"markerBorderAlpha"];
	}

	if (self.markerBorderColor) {
		[dictRep setObject:self.markerBorderColor forKey:@"markerBorderColor"];
	}

	if (self.markerBorderThickness) {
		[dictRep setObject:self.markerBorderThickness forKey:@"markerBorderThickness"];
	}

	if (self.markerDisabledColor) {
		[dictRep setObject:self.markerDisabledColor forKey:@"markerDisabledColor"];
	}

	if (self.markerLabelGap) {
		[dictRep setObject:self.markerLabelGap forKey:@"markerLabelGap"];
	}

	if (self.markerSize) {
		[dictRep setObject:self.markerSize forKey:@"markerSize"];
	}

	if (self.markerType) {
		[dictRep setObject:self.markerType forKey:@"markerType"];
	}

	if (self.maxColumns) {
		[dictRep setObject:self.maxColumns forKey:@"maxColumns"];
	}

	if (self.periodValueText) {
		[dictRep setObject:self.periodValueText forKey:@"periodValueText"];
	}

	if (self.position) {
		[dictRep setObject:self.position forKey:@"position"];
	}

	[dictRep setObject:@(self.reversedOrder) forKey:@"reversedOrder"];

	if (self.right) {
		[dictRep setObject:self.right forKey:@"right"];
	}

	if (self.rollOverColor) {
		[dictRep setObject:self.rollOverColor forKey:@"rollOverColor"];
	}

	if (self.rollOverGraphAlpha) {
		[dictRep setObject:self.rollOverGraphAlpha forKey:@"rollOverGraphAlpha"];
	}

	[dictRep setObject:@(self.showEntries) forKey:@"showEntries"];

	if (self.spacing) {
		[dictRep setObject:self.spacing forKey:@"spacing"];
	}

	[dictRep setObject:@(self.switchable) forKey:@"switchable"];

	if (self.switchColor) {
		[dictRep setObject:self.switchColor forKey:@"switchColor"];
	}

	if (self.switchType) {
		[dictRep setObject:self.switchType forKey:@"switchType"];
	}

	[dictRep setObject:@(self.textClickEnabled) forKey:@"textClickEnabled"];

	if (self.top) {
		[dictRep setObject:self.top forKey:@"top"];
	}

	[dictRep setObject:@(self.useGraphSettings) forKey:@"useGraphSettings"];

	[dictRep setObject:@(self.useMarkerColorForLabels) forKey:@"useMarkerColorForLabels"];

	[dictRep setObject:@(self.useMarkerColorForValues) forKey:@"useMarkerColorForValues"];

	if (self.valueAlign) {
		[dictRep setObject:self.valueAlign forKey:@"valueAlign"];
	}

	if (self.valueText) {
		[dictRep setObject:self.valueText forKey:@"valueText"];
	}

	if (self.valueWidth) {
		[dictRep setObject:self.valueWidth forKey:@"valueWidth"];
	}

	if (self.verticalGap) {
		[dictRep setObject:self.verticalGap forKey:@"verticalGap"];
	}

	if (self.width) {
		[dictRep setObject:self.width forKey:@"width"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"amLegend\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end