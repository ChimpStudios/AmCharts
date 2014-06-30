// 
//  AmSmallMap.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmSmallMap.h"
#import "AmCategories.h"


@implementation AmSmallMap

- (id)init {
	self = [super init];
	if (self) {
//		self.backgroundAlpha = @(1);
//		self.backgroundColor = @"#9A9A9A";
//		self.borderAlpha = @(1);
//		self.borderColor = @"#FFFFFF";
//		self.borderThickness = @(3);
//		self.mapColor = @"#E6E6E6";
//		self.minimizeButtonWidth = @(16);
//		self.rectangleColor = @"#FFFFFF";
//		self.right = @(10);
//		self.size = @(0.2);
//		self.top = @(10);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.backgroundAlpha) {
		[dictRep setObject:self.backgroundAlpha forKey:@"backgroundAlpha"];
	}

	if (self.backgroundColor) {
		[dictRep setObject:self.backgroundColor forKey:@"backgroundColor"];
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

	if (self.bottom) {
		[dictRep setObject:self.bottom forKey:@"bottom"];
	}

	if (self.left) {
		[dictRep setObject:self.left forKey:@"left"];
	}

	if (self.mapColor) {
		[dictRep setObject:self.mapColor forKey:@"mapColor"];
	}

	if (self.minimizeButtonWidth) {
		[dictRep setObject:self.minimizeButtonWidth forKey:@"minimizeButtonWidth"];
	}

	if (self.rectangleColor) {
		[dictRep setObject:self.rectangleColor forKey:@"rectangleColor"];
	}

	if (self.right) {
		[dictRep setObject:self.right forKey:@"right"];
	}

	if (self.size) {
		[dictRep setObject:self.size forKey:@"size"];
	}

	if (self.top) {
		[dictRep setObject:self.top forKey:@"top"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"smallMap\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end