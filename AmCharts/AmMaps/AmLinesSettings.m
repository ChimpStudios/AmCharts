// 
//  AmLinesSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmLinesSettings.h"
#import "AmCategories.h"


@implementation AmLinesSettings

- (id)init {
	self = [super init];
	if (self) {
		self.arrow = @"none";
		self.arrowAlpha = @(1);
		self.arrowSize = @(10);
		self.balloonText = @"[[title]]";
		self.color = @"#990000";
		self.dashLength = @(0);
		self.descriptionWindowWidth = @(250);
		self.thickness = @(1);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.arrow) {
		[dictRep setObject:self.arrow forKey:@"arrow"];
	}

	if (self.arrowAlpha) {
		[dictRep setObject:self.arrowAlpha forKey:@"arrowAlpha"];
	}

	if (self.arrowColor) {
		[dictRep setObject:self.arrowColor forKey:@"arrowColor"];
	}

	if (self.arrowSize) {
		[dictRep setObject:self.arrowSize forKey:@"arrowSize"];
	}

	if (self.balloonText) {
		[dictRep setObject:self.balloonText forKey:@"balloonText"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.dashLength) {
		[dictRep setObject:self.dashLength forKey:@"dashLength"];
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

	if (self.thickness) {
		[dictRep setObject:self.thickness forKey:@"thickness"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"linesSettings\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end