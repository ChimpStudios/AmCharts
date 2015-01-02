// 
//  AmSlice.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmSlice.h"
#import "AmCategories.h"


@implementation AmSlice

- (id)init {
	self = [super init];
	if (self) {
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.alpha) {
		[dictRep setObject:self.alpha forKey:@"alpha"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.dataContext) {
		[dictRep setObject:self.dataContext forKey:@"dataContext"];
	}

	if (self.amDescription) {
		[dictRep setObject:self.amDescription forKey:@"description"];
	}

	[dictRep setObject:@(self.hidden) forKey:@"hidden"];

	if (self.percents) {
		[dictRep setObject:self.percents forKey:@"percents"];
	}

	[dictRep setObject:@(self.pulled) forKey:@"pulled"];

	if (self.title) {
		[dictRep setObject:self.title forKey:@"title"];
	}

	if (self.url) {
		[dictRep setObject:self.url forKey:@"url"];
	}

	if (self.value) {
		[dictRep setObject:self.value forKey:@"value"];
	}

	[dictRep setObject:@(self.visibleInLegend) forKey:@"visibleInLegend"];

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"slice\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end