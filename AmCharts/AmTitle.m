// 
//  AmTitle.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmTitle.h"
#import "AmCategories.h"


@implementation AmTitle

- (id)init {
	self = [super init];
	if (self) {
		self.alpha = @(1);
		self.bold = false;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

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

	if (self.size) {
		[dictRep setObject:self.size forKey:@"size"];
	}

	if (self.text) {
		[dictRep setObject:self.text forKey:@"text"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"title\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end