// 
//  AmSlicedChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmSlicedChart.h"
#import "AmCategories.h"


@implementation AmSlicedChart

- (id)init {
	self = [super init];
	if (self) {
		self.alpha = @(1);
		self.brightnessStep = @(30);
		self.colors = [@[@"#FF0F00", @"#FF6600", @"#FF9E01", @"#FCD202", @"#F8FF01", @"#B0DE09", @"#04D215", @"#0D8ECF", @"#0D52D1", @"#2A0CD0", @"#8A0CCF", @"#CD0D74", @"#754DEB", @"#DDDDDD", @"#999999", @"#333333", @"#000000", @"#57032A", @"#CA9726", @"#990000", @"#4B0C25"] mutableCopy];
		self.gradientRatio = [@[] mutableCopy];
		self.groupedAlpha = @(1);
		self.groupedPulled = false;
		self.groupedTitle = @"Other";
		self.groupPercent = @(0);
		self.hideLabelsPercent = @(0);
		self.hoverAlpha = @(1);
		self.labelsEnabled = true;
		self.labelTickAlpha = @(0.2);
		self.labelTickColor = @"#000000";
		self.marginBottom = @(10);
		self.marginLeft = @(0);
		self.marginRight = @(0);
		self.marginTop = @(10);
		self.outlineAlpha = @(0);
		self.outlineColor = @"#FFFFFF";
		self.outlineThickness = @(1);
		self.pullOutDuration = @(1);
		self.pullOutEffect = @"bounce";
		self.pullOutOnlyOne = false;
		self.sequencedAnimation = true;
		self.startAlpha = @(0);
		self.startDuration = @(1);
		self.startEffect = @"bounce";
		self.urlTarget = @"_self";
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	if (self.alpha) {
		[dictRep setObject:self.alpha forKey:@"alpha"];
	}

	if (self.alphaField) {
		[dictRep setObject:self.alphaField forKey:@"alphaField"];
	}

	if (self.baseColor) {
		[dictRep setObject:self.baseColor forKey:@"baseColor"];
	}

	if (self.brightnessStep) {
		[dictRep setObject:self.brightnessStep forKey:@"brightnessStep"];
	}

	if (self.chartData) {
		[dictRep setObject:self.chartData forKey:@"chartData"];
	}

	if (self.colorField) {
		[dictRep setObject:self.colorField forKey:@"colorField"];
	}

	if (self.colors) {
		[dictRep setObject:self.colors forKey:@"colors"];
	}

	if (self.descriptionField) {
		[dictRep setObject:self.descriptionField forKey:@"descriptionField"];
	}

	if (self.gradientRatio) {
		[dictRep setObject:self.gradientRatio forKey:@"gradientRatio"];
	}

	if (self.groupedAlpha) {
		[dictRep setObject:self.groupedAlpha forKey:@"groupedAlpha"];
	}

	if (self.groupedColor) {
		[dictRep setObject:self.groupedColor forKey:@"groupedColor"];
	}

	if (self.groupedDescription) {
		[dictRep setObject:self.groupedDescription forKey:@"groupedDescription"];
	}

	[dictRep setObject:@(self.groupedPulled) forKey:@"groupedPulled"];

	if (self.groupedTitle) {
		[dictRep setObject:self.groupedTitle forKey:@"groupedTitle"];
	}

	if (self.groupPercent) {
		[dictRep setObject:self.groupPercent forKey:@"groupPercent"];
	}

	if (self.hideLabelsPercent) {
		[dictRep setObject:self.hideLabelsPercent forKey:@"hideLabelsPercent"];
	}

	if (self.hoverAlpha) {
		[dictRep setObject:self.hoverAlpha forKey:@"hoverAlpha"];
	}

	[dictRep setObject:@(self.labelsEnabled) forKey:@"labelsEnabled"];

	if (self.labelTickAlpha) {
		[dictRep setObject:self.labelTickAlpha forKey:@"labelTickAlpha"];
	}

	if (self.labelTickColor) {
		[dictRep setObject:self.labelTickColor forKey:@"labelTickColor"];
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

	if (self.outlineAlpha) {
		[dictRep setObject:self.outlineAlpha forKey:@"outlineAlpha"];
	}

	if (self.outlineColor) {
		[dictRep setObject:self.outlineColor forKey:@"outlineColor"];
	}

	if (self.outlineThickness) {
		[dictRep setObject:self.outlineThickness forKey:@"outlineThickness"];
	}

	if (self.patternField) {
		[dictRep setObject:self.patternField forKey:@"patternField"];
	}

	if (self.pulledField) {
		[dictRep setObject:self.pulledField forKey:@"pulledField"];
	}

	if (self.pullOutDuration) {
		[dictRep setObject:self.pullOutDuration forKey:@"pullOutDuration"];
	}

	if (self.pullOutEffect) {
		[dictRep setObject:self.pullOutEffect forKey:@"pullOutEffect"];
	}

	[dictRep setObject:@(self.pullOutOnlyOne) forKey:@"pullOutOnlyOne"];

	[dictRep setObject:@(self.sequencedAnimation) forKey:@"sequencedAnimation"];

	if (self.startAlpha) {
		[dictRep setObject:self.startAlpha forKey:@"startAlpha"];
	}

	if (self.startDuration) {
		[dictRep setObject:self.startDuration forKey:@"startDuration"];
	}

	if (self.startEffect) {
		[dictRep setObject:self.startEffect forKey:@"startEffect"];
	}

	if (self.titleField) {
		[dictRep setObject:self.titleField forKey:@"titleField"];
	}

	if (self.urlField) {
		[dictRep setObject:self.urlField forKey:@"urlField"];
	}

	if (self.urlTarget) {
		[dictRep setObject:self.urlTarget forKey:@"urlTarget"];
	}

	if (self.valueField) {
		[dictRep setObject:self.valueField forKey:@"valueField"];
	}

	if (self.visibleInLegendField) {
		[dictRep setObject:self.visibleInLegendField forKey:@"visibleInLegendField"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"amSlicedChart\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end