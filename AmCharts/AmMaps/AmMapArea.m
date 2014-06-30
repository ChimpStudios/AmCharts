// 
//  AmMapArea.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmMapArea.h"
#import "AmCategories.h"


@implementation AmMapArea

- (id)init {
	self = [super init];
	if (self) {
//		self.autoZoom = false;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	[dictRep setObject:@(self.autoZoom) forKey:@"autoZoom"];

	if (self.uid) {
		[dictRep setObject:self.uid forKey:@"id"];
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

	if (self.pattern) {
		[dictRep setObject:self.pattern forKey:@"pattern"];
	}

	if (self.rollOverOutlineColor) {
		[dictRep setObject:self.rollOverOutlineColor forKey:@"rollOverOutlineColor"];
	}

	if (self.value) {
		[dictRep setObject:self.value forKey:@"value"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"mapArea\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end