// 
//  AmZoomControl.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmZoomControl.h"
#import "AmCategories.h"


@implementation AmZoomControl

- (id)init {
	self = [super init];
	if (self) {
//		self.buttonBorderAlpha = @(1);
//		self.buttonBorderThickness = @(1);
//		self.buttonColorHover = @"#FF0000";
//		self.buttonCornerRadius = @(0);
//		self.buttonFillAlpha = @(1);
//		self.buttonFillColor = @"#990000";
//		self.buttonIconAlpha  = @(1);
//		self.buttonIconColor = @"#FFFFFF";
//		self.buttonRollOverColor = @"#CC0000";
//		self.buttonSize = @(18);
//		self.gridAlpha = @(1);
//		self.gridBackgroundAlpha = @(0.15);
//		self.gridBackgroundColor = @"#000000";
//		self.gridColor = @"#FFFFFF";
//		self.gridHeight = @(150);
//		self.homeIconColor = @"#FFFFFF";
//		self.homeIconFile = @"homeIcon.gif";
//		self.iconSize = @(11);
//		self.left = @(10);
//		self.maxZoomLevel = @(64);
//		self.minZoomLevel = @(1);
		self.panControlEnabled = true;
//		self.panStepSize = @(0.1);
//		self.top = @(10);
		self.zoomControlEnabled  = true;
//		self.zoomFactor = @(2);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.buttonBorderAlpha) {
		[dictRep setObject:self.buttonBorderAlpha forKey:@"buttonBorderAlpha"];
	}

	if (self.buttonBorderThickness) {
		[dictRep setObject:self.buttonBorderThickness forKey:@"buttonBorderThickness"];
	}

	if (self.buttonColorHover) {
		[dictRep setObject:self.buttonColorHover forKey:@"buttonColorHover"];
	}

	if (self.buttonCornerRadius) {
		[dictRep setObject:self.buttonCornerRadius forKey:@"buttonCornerRadius"];
	}

	if (self.buttonFillAlpha) {
		[dictRep setObject:self.buttonFillAlpha forKey:@"buttonFillAlpha"];
	}

	if (self.buttonFillColor) {
		[dictRep setObject:self.buttonFillColor forKey:@"buttonFillColor"];
	}

	if (self.buttonIconAlpha ) {
		[dictRep setObject:self.buttonIconAlpha  forKey:@"buttonIconAlpha "];
	}

	if (self.buttonIconColor) {
		[dictRep setObject:self.buttonIconColor forKey:@"buttonIconColor"];
	}

	if (self.buttonRollOverColor) {
		[dictRep setObject:self.buttonRollOverColor forKey:@"buttonRollOverColor"];
	}

	if (self.buttonSize) {
		[dictRep setObject:self.buttonSize forKey:@"buttonSize"];
	}

	if (self.gridAlpha) {
		[dictRep setObject:self.gridAlpha forKey:@"gridAlpha"];
	}

	if (self.gridBackgroundAlpha) {
		[dictRep setObject:self.gridBackgroundAlpha forKey:@"gridBackgroundAlpha"];
	}

	if (self.gridBackgroundColor) {
		[dictRep setObject:self.gridBackgroundColor forKey:@"gridBackgroundColor"];
	}

	if (self.gridColor) {
		[dictRep setObject:self.gridColor forKey:@"gridColor"];
	}

	if (self.gridHeight) {
		[dictRep setObject:self.gridHeight forKey:@"gridHeight"];
	}

	if (self.homeIconColor) {
		[dictRep setObject:self.homeIconColor forKey:@"homeIconColor"];
	}

	if (self.homeIconFile) {
		[dictRep setObject:self.homeIconFile forKey:@"homeIconFile"];
	}

	if (self.iconSize) {
		[dictRep setObject:self.iconSize forKey:@"iconSize"];
	}

	if (self.left) {
		[dictRep setObject:self.left forKey:@"left"];
	}

	if (self.maxZoomLevel) {
		[dictRep setObject:self.maxZoomLevel forKey:@"maxZoomLevel"];
	}

	if (self.minZoomLevel) {
		[dictRep setObject:self.minZoomLevel forKey:@"minZoomLevel"];
	}

	[dictRep setObject:@(self.panControlEnabled) forKey:@"panControlEnabled"];

	if (self.panStepSize) {
		[dictRep setObject:self.panStepSize forKey:@"panStepSize"];
	}

	if (self.top) {
		[dictRep setObject:self.top forKey:@"top"];
	}

	[dictRep setObject:@(self.zoomControlEnabled ) forKey:@"zoomControlEnabled"];

	if (self.zoomFactor) {
		[dictRep setObject:self.zoomFactor forKey:@"zoomFactor"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"zoomControl\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end