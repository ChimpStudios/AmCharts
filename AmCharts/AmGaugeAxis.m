// 
//  AmGaugeAxis.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmGaugeAxis.h"
#import "AmCategories.h"


@implementation AmGaugeAxis

- (id)init {
	self = [super init];
	if (self) {
		self.axisAlpha = @(1);
		self.axisColor = @"#000000";
		self.axisThickness = @(1);
		self.bandAlpha = @(1);
		self.bandOutlineAlpha = @(0);
		self.bandOutlineColor = @"#000000";
		self.bandOutlineThickness = @(0);
		self.bottomTextBold = true;
		self.bottomTextYOffset = @(0);
		self.centerX = @"0%";
		self.centerY = @"0%";
		self.endAngle = @(120);
		self.gridCount = @(5);
		self.gridInside = true;
		self.inside = true;
		self.labelFrequency = @(1);
		self.labelOffset = @(15);
		self.minorTickLength = @(5);
		self.radius = @"95%";
		self.showFirstLabel = true;
		self.showLastLabel = true;
		self.startAngle = @(-120);
		self.startValue = @(0);
		self.tickAlpha = @(1);
		self.tickColor = @"#555555";
		self.tickLength = @(10);
		self.tickThickness = @(1);
		self.topTextBold = true;
		self.topTextYOffset = @(0);
		self.unitPosition = @"right";
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.axisAlpha) {
		[dictRep setObject:self.axisAlpha forKey:@"axisAlpha"];
	}

	if (self.axisColor) {
		[dictRep setObject:self.axisColor forKey:@"axisColor"];
	}

	if (self.axisThickness) {
		[dictRep setObject:self.axisThickness forKey:@"axisThickness"];
	}

	if (self.bandAlpha) {
		[dictRep setObject:self.bandAlpha forKey:@"bandAlpha"];
	}

	if (self.bandOutlineAlpha) {
		[dictRep setObject:self.bandOutlineAlpha forKey:@"bandOutlineAlpha"];
	}

	if (self.bandOutlineColor) {
		[dictRep setObject:self.bandOutlineColor forKey:@"bandOutlineColor"];
	}

	if (self.bandOutlineThickness) {
		[dictRep setObject:self.bandOutlineThickness forKey:@"bandOutlineThickness"];
	}

	if (self.bands) {
		[dictRep setObject:self.bands forKey:@"bands"];
	}

	if (self.bottomText) {
		[dictRep setObject:self.bottomText forKey:@"bottomText"];
	}

	[dictRep setObject:@(self.bottomTextBold) forKey:@"bottomTextBold"];

	if (self.bottomTextColor) {
		[dictRep setObject:self.bottomTextColor forKey:@"bottomTextColor"];
	}

	if (self.bottomTextFontSize) {
		[dictRep setObject:self.bottomTextFontSize forKey:@"bottomTextFontSize"];
	}

	if (self.bottomTextYOffset) {
		[dictRep setObject:self.bottomTextYOffset forKey:@"bottomTextYOffset"];
	}

	if (self.centerX) {
		[dictRep setObject:self.centerX forKey:@"centerX"];
	}

	if (self.centerY) {
		[dictRep setObject:self.centerY forKey:@"centerY"];
	}

	if (self.endAngle) {
		[dictRep setObject:self.endAngle forKey:@"endAngle"];
	}

	if (self.endValue) {
		[dictRep setObject:self.endValue forKey:@"endValue"];
	}

	if (self.gridCount) {
		[dictRep setObject:self.gridCount forKey:@"gridCount"];
	}

	[dictRep setObject:@(self.gridInside) forKey:@"gridInside"];

	[dictRep setObject:@(self.inside) forKey:@"inside"];

	if (self.labelFrequency) {
		[dictRep setObject:self.labelFrequency forKey:@"labelFrequency"];
	}

	if (self.labelOffset) {
		[dictRep setObject:self.labelOffset forKey:@"labelOffset"];
	}

	if (self.minorTickInterval) {
		[dictRep setObject:self.minorTickInterval forKey:@"minorTickInterval"];
	}

	if (self.minorTickLength) {
		[dictRep setObject:self.minorTickLength forKey:@"minorTickLength"];
	}

	if (self.radius) {
		[dictRep setObject:self.radius forKey:@"radius"];
	}

	[dictRep setObject:@(self.showFirstLabel) forKey:@"showFirstLabel"];

	[dictRep setObject:@(self.showLastLabel) forKey:@"showLastLabel"];

	if (self.startAngle) {
		[dictRep setObject:self.startAngle forKey:@"startAngle"];
	}

	if (self.startValue) {
		[dictRep setObject:self.startValue forKey:@"startValue"];
	}

	if (self.tickAlpha) {
		[dictRep setObject:self.tickAlpha forKey:@"tickAlpha"];
	}

	if (self.tickColor) {
		[dictRep setObject:self.tickColor forKey:@"tickColor"];
	}

	if (self.tickLength) {
		[dictRep setObject:self.tickLength forKey:@"tickLength"];
	}

	if (self.tickThickness) {
		[dictRep setObject:self.tickThickness forKey:@"tickThickness"];
	}

	if (self.topText) {
		[dictRep setObject:self.topText forKey:@"topText"];
	}

	[dictRep setObject:@(self.topTextBold) forKey:@"topTextBold"];

	if (self.topTextColor) {
		[dictRep setObject:self.topTextColor forKey:@"topTextColor"];
	}

	if (self.topTextFontSize) {
		[dictRep setObject:self.topTextFontSize forKey:@"topTextFontSize"];
	}

	if (self.topTextYOffset) {
		[dictRep setObject:self.topTextYOffset forKey:@"topTextYOffset"];
	}

	if (self.unit) {
		[dictRep setObject:self.unit forKey:@"unit"];
	}

	if (self.unitPosition) {
		[dictRep setObject:self.unitPosition forKey:@"unitPosition"];
	}

	if (self.valueInterval) {
		[dictRep setObject:self.valueInterval forKey:@"valueInterval"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"gaugeAxis\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end