// 
//  AmMapObject.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmMapObject.h"
#import "AmCategories.h"
#import "AmMapObject.h"


@implementation AmMapObject

- (id)init {
	self = [super init];
	if (self) {
		self.fixedSize = true;
		self.mouseEnabled = true;
		self.passZoomValuesToTarget = false;
		self.remainVisible = true;
		self.selectable = false;
		self.showAsSelected = false;
		self.urlTarget = @"_self";
		self.useTargetsZoomValues = false;
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

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.customData) {
		[dictRep setObject:self.customData forKey:@"customData"];
	}

	if (self.description) {
		[dictRep setObject:self.description forKey:@"description"];
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

	[dictRep setObject:@(self.fixedSize) forKey:@"fixedSize"];

	if (self.groupId) {
		[dictRep setObject:self.groupId forKey:@"groupId"];
	}

	if (self.uid) {
		[dictRep setObject:self.uid forKey:@"id"];
	}

	if (self.images) {
		[dictRep setObject:self.images forKey:@"images"];
	}

	if (self.lines) {
		[dictRep setObject:self.lines forKey:@"lines"];
	}

	if (self.linkToObject) {
		[dictRep setObject:[self.linkToObject dictionaryRepresentation] forKey:@"linkToObject"];
	}

	[dictRep setObject:@(self.mouseEnabled) forKey:@"mouseEnabled"];

	if (self.objectType) {
		[dictRep setObject:self.objectType forKey:@"objectType"];
	}

	[dictRep setObject:@(self.passZoomValuesToTarget) forKey:@"passZoomValuesToTarget"];

	[dictRep setObject:@(self.remainVisible) forKey:@"remainVisible"];

	if (self.rollOverColor) {
		[dictRep setObject:self.rollOverColor forKey:@"rollOverColor"];
	}

	[dictRep setObject:@(self.selectable) forKey:@"selectable"];

	if (self.selectedColor) {
		[dictRep setObject:self.selectedColor forKey:@"selectedColor"];
	}

	[dictRep setObject:@(self.showAsSelected) forKey:@"showAsSelected"];

	[dictRep setObject:@(self.showInList) forKey:@"showInList"];

	if (self.title) {
		[dictRep setObject:self.title forKey:@"title"];
	}

	if (self.url) {
		[dictRep setObject:self.url forKey:@"url"];
	}

	if (self.urlTarget) {
		[dictRep setObject:self.urlTarget forKey:@"urlTarget"];
	}

	[dictRep setObject:@(self.useTargetsZoomValues) forKey:@"useTargetsZoomValues"];

	if (self.zoomLatitude) {
		[dictRep setObject:self.zoomLatitude forKey:@"zoomLatitude"];
	}

	if (self.zoomLevel) {
		[dictRep setObject:self.zoomLevel forKey:@"zoomLevel"];
	}

	if (self.zoomLongitude) {
		[dictRep setObject:self.zoomLongitude forKey:@"zoomLongitude"];
	}

	if (self.zoomX) {
		[dictRep setObject:self.zoomX forKey:@"zoomX"];
	}

	if (self.zoomY) {
		[dictRep setObject:self.zoomY forKey:@"zoomY"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"mapObject\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end