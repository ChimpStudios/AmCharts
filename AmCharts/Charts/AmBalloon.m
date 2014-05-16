// 
//  AmBalloon.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmBalloon.h"
#import "AmCategories.h"


@implementation AmBalloon

- (id)init {
	self = [super init];
	if (self) {
		self.adjustBorderColor = true;
//		self.animationDuration = @(0.3);
//		self.borderAlpha = @(1);
//		self.borderColor = @"#FFFFFF";
//		self.borderThickness = @(2);
//		self.color = @"#000000";
//		self.cornerRadius = @(0);
//		self.fadeOutDuration = @(0.3);
//		self.fillAlpha = @(0.8);
//		self.fillColor = @"#FFFFFF";
//		self.fixedPosition = false;
//		self.horizontalPadding = @(8);
//		self.offsetX = @(1);
//		self.offsetY = @(6);
//		self.pointerWidth = @(6);
//		self.shadowAlpha = @(0.4);
//		self.shadowColor = @"#000000";
//		self.showBullet = false;
//		self.textAlign = @"middle";
//		self.verticalPadding = @(4);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	[dictRep setObject:@(self.adjustBorderColor) forKey:@"adjustBorderColor"];

	if (self.animationDuration) {
		[dictRep setObject:self.animationDuration forKey:@"animationDuration"];
	}

	if (self.borderAlpha) {
		[dictRep setObject:self.borderAlpha forKey:@"borderAlpha"];
	}

	if (self.borderColor) {
		[dictRep setObject:self.borderColor forKey:@"borderColor"];
	}

	if (self.borderThickness) {
		[dictRep setObject:self.borderThickness forKey:@"borderThickness"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.cornerRadius) {
		[dictRep setObject:self.cornerRadius forKey:@"cornerRadius"];
	}

	if (self.fadeOutDuration) {
		[dictRep setObject:self.fadeOutDuration forKey:@"fadeOutDuration"];
	}

	if (self.fillAlpha) {
		[dictRep setObject:self.fillAlpha forKey:@"fillAlpha"];
	}

	if (self.fillColor) {
		[dictRep setObject:self.fillColor forKey:@"fillColor"];
	}

	[dictRep setObject:@(self.fixedPosition) forKey:@"fixedPosition"];

	if (self.fontSize) {
		[dictRep setObject:self.fontSize forKey:@"fontSize"];
	}

	if (self.horizontalPadding) {
		[dictRep setObject:self.horizontalPadding forKey:@"horizontalPadding"];
	}

	if (self.offsetX) {
		[dictRep setObject:self.offsetX forKey:@"offsetX"];
	}

	if (self.offsetY) {
		[dictRep setObject:self.offsetY forKey:@"offsetY"];
	}

	if (self.pointerWidth) {
		[dictRep setObject:self.pointerWidth forKey:@"pointerWidth"];
	}

	if (self.shadowAlpha) {
		[dictRep setObject:self.shadowAlpha forKey:@"shadowAlpha"];
	}

	if (self.shadowColor) {
		[dictRep setObject:self.shadowColor forKey:@"shadowColor"];
	}

	[dictRep setObject:@(self.showBullet) forKey:@"showBullet"];

	if (self.textAlign) {
		[dictRep setObject:self.textAlign forKey:@"textAlign"];
	}

	if (self.verticalPadding) {
		[dictRep setObject:self.verticalPadding forKey:@"verticalPadding"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"amBalloon\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end