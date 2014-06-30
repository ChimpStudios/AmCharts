// 
//  AmImagesSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmImagesSettings.h"
#import "AmCategories.h"


@implementation AmImagesSettings

- (id)init {
	self = [super init];
	if (self) {
//		self.alpha = @(1);
//		self.balloonText = @"[[title]]";
		self.centered = true;
//		self.color = @"#000000";
//		self.descriptionWindowWidth = @(250);
//		self.labelColor = @"#000000";
//		self.labelFontSize = @(11);
//		self.labelPosition = @"right";
//		self.labelRollOverColor = @"#00CC00";
//		self.outlineAlpha = @(0);
//		self.outlineThickness = @(1);
//		self.rollOverScale = @(1);
//		self.selectedScale = @(1);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.alpha) {
		[dictRep setObject:self.alpha forKey:@"alpha"];
	}

	if (self.balloonText) {
		[dictRep setObject:self.balloonText forKey:@"balloonText"];
	}

	[dictRep setObject:@(self.centered) forKey:@"centered"];

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.descriptionWindowHeight) {
		[dictRep setObject:self.descriptionWindowHeight forKey:@"descriptionWindowHeight"];
	}

	if (self.descriptionWindowWidth) {
		[dictRep setObject:self.descriptionWindowWidth forKey:@"descriptionWindowWidth"];
	}

	if (self.descriptionWindowX) {
		[dictRep setObject:self.descriptionWindowX forKey:@"descriptionWindowX"];
	}

	if (self.descriptionWindowY) {
		[dictRep setObject:self.descriptionWindowY forKey:@"descriptionWindowY"];
	}

	if (self.labelColor) {
		[dictRep setObject:self.labelColor forKey:@"labelColor"];
	}

	if (self.labelFontSize) {
		[dictRep setObject:self.labelFontSize forKey:@"labelFontSize"];
	}

	if (self.labelPosition) {
		[dictRep setObject:self.labelPosition forKey:@"labelPosition"];
	}

	if (self.labelRollOverColor) {
		[dictRep setObject:self.labelRollOverColor forKey:@"labelRollOverColor"];
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

	if (self.rollOverColor) {
		[dictRep setObject:self.rollOverColor forKey:@"rollOverColor"];
	}

	if (self.rollOverScale) {
		[dictRep setObject:self.rollOverScale forKey:@"rollOverScale"];
	}

	if (self.selectedLabelColor) {
		[dictRep setObject:self.selectedLabelColor forKey:@"selectedLabelColor"];
	}

	if (self.selectedScale) {
		[dictRep setObject:self.selectedScale forKey:@"selectedScale"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"imagesSettings\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end