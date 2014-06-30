// 
//  AmMapImage.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmMapImage.h"
#import "AmCategories.h"


@implementation AmMapImage

- (id)init {
	self = [super init];
	if (self) {
//		self.labelShiftX = @(0);
//		self.labelShiftY = @(0);
//		self.scale = @(1);
//		self.widthAndHeightUnits = @"pixels";
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	if (self.bottom) {
		[dictRep setObject:self.bottom forKey:@"bottom"];
	}

	[dictRep setObject:@(self.centered) forKey:@"centered"];

	if (self.height) {
		[dictRep setObject:self.height forKey:@"height"];
	}

	if (self.imageURL) {
		[dictRep setObject:self.imageURL forKey:@"imageURL"];
	}

	if (self.label) {
		[dictRep setObject:self.label forKey:@"label"];
	}

	if (self.labelBackgroundAlpha) {
		[dictRep setObject:self.labelBackgroundAlpha forKey:@"labelBackgroundAlpha"];
	}

	if (self.labelBackgroundColor) {
		[dictRep setObject:self.labelBackgroundColor forKey:@"labelBackgroundColor"];
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

	if (self.labelShiftX) {
		[dictRep setObject:self.labelShiftX forKey:@"labelShiftX"];
	}

	if (self.labelShiftY) {
		[dictRep setObject:self.labelShiftY forKey:@"labelShiftY"];
	}

	if (self.latitude) {
		[dictRep setObject:self.latitude forKey:@"latitude"];
	}

	if (self.left) {
		[dictRep setObject:self.left forKey:@"left"];
	}

	if (self.longitude) {
		[dictRep setObject:self.longitude forKey:@"longitude"];
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

	if (self.percentHeight) {
		[dictRep setObject:self.percentHeight forKey:@"percentHeight"];
	}

	if (self.percentWidth) {
		[dictRep setObject:self.percentWidth forKey:@"percentWidth"];
	}

	if (self.right) {
		[dictRep setObject:self.right forKey:@"right"];
	}

	if (self.rollOverScale) {
		[dictRep setObject:self.rollOverScale forKey:@"rollOverScale"];
	}

	if (self.scale) {
		[dictRep setObject:self.scale forKey:@"scale"];
	}

	if (self.selectedLabelColor) {
		[dictRep setObject:self.selectedLabelColor forKey:@"selectedLabelColor"];
	}

	if (self.selectedScale) {
		[dictRep setObject:self.selectedScale forKey:@"selectedScale"];
	}

	if (self.svgPath) {
		[dictRep setObject:self.svgPath forKey:@"svgPath"];
	}

	if (self.top) {
		[dictRep setObject:self.top forKey:@"top"];
	}

	if (self.type) {
		[dictRep setObject:self.type forKey:@"type"];
	}

	if (self.width) {
		[dictRep setObject:self.width forKey:@"width"];
	}

	if (self.widthAndHeightUnits) {
		[dictRep setObject:self.widthAndHeightUnits forKey:@"widthAndHeightUnits"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"mapImage\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end