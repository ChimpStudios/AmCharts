// 
//  AmLabel.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmLabel.h"
#import "AmCategories.h"


@implementation AmLabel

- (id)init {
	self = [super init];
	if (self) {
		self.align = @"left";
		self.alpha = @(1);
		self.bold = false;
		self.rotation = @(0);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.align) {
		[dictRep setObject:self.align forKey:@"align"];
	}

	if (self.alpha) {
		[dictRep setObject:self.alpha forKey:@"alpha"];
	}

	[dictRep setObject:@(self.bold) forKey:@"bold"];

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.uid) {
		[dictRep setObject:self.uid forKey:@"id"];
	}

	if (self.rotation) {
		[dictRep setObject:self.rotation forKey:@"rotation"];
	}

	if (self.size) {
		[dictRep setObject:self.size forKey:@"size"];
	}

	if (self.text) {
		[dictRep setObject:self.text forKey:@"text"];
	}

	if (self.url) {
		[dictRep setObject:self.url forKey:@"url"];
	}

	if (self.x) {
		[dictRep setObject:self.x forKey:@"x"];
	}

	if (self.y) {
		[dictRep setObject:self.y forKey:@"y"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"label\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end