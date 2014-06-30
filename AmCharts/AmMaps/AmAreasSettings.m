// 
//  AmAreasSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmAreasSettings.h"
#import "AmCategories.h"


@implementation AmAreasSettings

- (id)init {
	self = [super init];
	if (self) {
		//self.alpha = @(1);
		//self.autoZoom = false;
		//self.balloonText = @"[[title]]";
		//self.color = @"#FFCC00";
		//self.colorSolid = @"#990000";
		//self.descriptionWindowWidth = @(250);
		//self.outlineAlpha = @(1);
		//self.outlineColor = @"#FFFFFF";
		//self.outlineThickness = @(0.5);
		//self.rollOverOutlineColor = @"#CC0000";
		//self.selectable = false;
		//self.selectedColor = @"#CC0000";
		//self.unlistedAreasAlpha = @(1);
		//self.unlistedAreasColor = @"#DDDDDD";
		//self.unlistedAreasOutlineAlpha = @(1);
		//self.unlistedAreasOutlineColor = @"#FFFFFF";
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.alpha) {
		[dictRep setObject:self.alpha forKey:@"alpha"];
	}

	[dictRep setObject:@(self.autoZoom) forKey:@"autoZoom"];

	if (self.balloonText) {
		[dictRep setObject:self.balloonText forKey:@"balloonText"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.colorSolid) {
		[dictRep setObject:self.colorSolid forKey:@"colorSolid"];
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

	if (self.rollOverOutlineAlpha) {
		[dictRep setObject:self.rollOverOutlineAlpha forKey:@"rollOverOutlineAlpha"];
	}

	if (self.rollOverOutlineColor) {
		[dictRep setObject:self.rollOverOutlineColor forKey:@"rollOverOutlineColor"];
	}

	if (self.rollOverOutlineThickness) {
		[dictRep setObject:self.rollOverOutlineThickness forKey:@"rollOverOutlineThickness"];
	}

	[dictRep setObject:@(self.selectable) forKey:@"selectable"];

	if (self.selectedColor) {
		[dictRep setObject:self.selectedColor forKey:@"selectedColor"];
	}

	if (self.selectedOutlineColor) {
		[dictRep setObject:self.selectedOutlineColor forKey:@"selectedOutlineColor"];
	}

	if (self.unlistedAreasAlpha) {
		[dictRep setObject:self.unlistedAreasAlpha forKey:@"unlistedAreasAlpha"];
	}

	if (self.unlistedAreasColor) {
		[dictRep setObject:self.unlistedAreasColor forKey:@"unlistedAreasColor"];
	}

	if (self.unlistedAreasOutlineAlpha) {
		[dictRep setObject:self.unlistedAreasOutlineAlpha forKey:@"unlistedAreasOutlineAlpha"];
	}

	if (self.unlistedAreasOutlineColor) {
		[dictRep setObject:self.unlistedAreasOutlineColor forKey:@"unlistedAreasOutlineColor"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"areasSettings\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end