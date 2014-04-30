// 
//  AmGaugeBand.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmGaugeBand.h"
#import "AmCategories.h"


@implementation AmGaugeBand

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

	if (self.endValue) {
		[dictRep setObject:self.endValue forKey:@"endValue"];
	}

	if (self.innerRadius) {
		[dictRep setObject:self.innerRadius forKey:@"innerRadius"];
	}

	if (self.radius) {
		[dictRep setObject:self.radius forKey:@"radius"];
	}

	if (self.startValue) {
		[dictRep setObject:self.startValue forKey:@"startValue"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"gaugeBand\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end