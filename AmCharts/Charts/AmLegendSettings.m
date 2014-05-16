// 
//  AmLegendSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmLegendSettings.h"
#import "AmCategories.h"


@implementation AmLegendSettings

- (id)init {
	self = [super init];
	if (self) {
//		self.equalWidths = false;
//		self.marginBottom = @(0);
//		self.marginTop = @(0);
//		self.textClickEnabled = false;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.align) {
		[dictRep setObject:self.align forKey:@"align"];
	}

	[dictRep setObject:@(self.equalWidths) forKey:@"equalWidths"];

	if (self.horizontalGap) {
		[dictRep setObject:self.horizontalGap forKey:@"horizontalGap"];
	}

	if (self.labelText) {
		[dictRep setObject:self.labelText forKey:@"labelText"];
	}

	if (self.marginBottom) {
		[dictRep setObject:self.marginBottom forKey:@"marginBottom"];
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

	[dictRep setObject:@(self.reversedOrder) forKey:@"reversedOrder"];

	if (self.rollOverColor) {
		[dictRep setObject:self.rollOverColor forKey:@"rollOverColor"];
	}

	if (self.rollOverGraphAlpha) {
		[dictRep setObject:self.rollOverGraphAlpha forKey:@"rollOverGraphAlpha"];
	}

	[dictRep setObject:@(self.switchable) forKey:@"switchable"];

	if (self.switchColor) {
		[dictRep setObject:self.switchColor forKey:@"switchColor"];
	}

	if (self.switchType) {
		[dictRep setObject:self.switchType forKey:@"switchType"];
	}

	[dictRep setObject:@(self.textClickEnabled) forKey:@"textClickEnabled"];

	[dictRep setObject:@(self.useMarkerColorForLabels) forKey:@"useMarkerColorForLabels"];

	if (self.valueTextComparing) {
		[dictRep setObject:self.valueTextComparing forKey:@"valueTextComparing"];
	}

	if (self.valueTextRegular) {
		[dictRep setObject:self.valueTextRegular forKey:@"valueTextRegular"];
	}

	if (self.valueWidth) {
		[dictRep setObject:self.valueWidth forKey:@"valueWidth"];
	}

	if (self.verticalGap) {
		[dictRep setObject:self.verticalGap forKey:@"verticalGap"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"legendSettings\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end