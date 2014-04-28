// 
//  AmValueLegend.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmValueLegend.h"
#import "AmCategories.h"


@implementation AmValueLegend

- (id)init {
	self = [super init];
	if (self) {
		self.borderAlpha = @(1);
		self.borderColor = @"#FFFFFF";
		self.borderThickness = @(1);
		self.bottom = @(10);
		self.color = @"#000000";
		self.fontSize = @(11);
		self.height = @(12);
		self.left = @(10);
		self.minValue = @"0";
		self.showAsGradient = false;
		self.width = @(200);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.borderAlpha) {
		[dictRep setObject:self.borderAlpha forKey:@"borderAlpha"];
	}

	if (self.borderColor) {
		[dictRep setObject:self.borderColor forKey:@"borderColor"];
	}

	if (self.borderThickness) {
		[dictRep setObject:self.borderThickness forKey:@"borderThickness"];
	}

	if (self.bottom) {
		[dictRep setObject:self.bottom forKey:@"bottom"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.fontSize) {
		[dictRep setObject:self.fontSize forKey:@"fontSize"];
	}

	if (self.height) {
		[dictRep setObject:self.height forKey:@"height"];
	}

	if (self.left) {
		[dictRep setObject:self.left forKey:@"left"];
	}

	if (self.maxValue) {
		[dictRep setObject:self.maxValue forKey:@"maxValue"];
	}

	if (self.minValue) {
		[dictRep setObject:self.minValue forKey:@"minValue"];
	}

	if (self.right) {
		[dictRep setObject:self.right forKey:@"right"];
	}

	[dictRep setObject:@(self.showAsGradient) forKey:@"showAsGradient"];

	if (self.top) {
		[dictRep setObject:self.top forKey:@"top"];
	}

	if (self.width) {
		[dictRep setObject:self.width forKey:@"width"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"valueLegend\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end