// 
//  AmXYChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmXYChart.h"
#import "AmCategories.h"


@implementation AmXYChart

- (id)init {
	self = [super init];
	if (self) {
//		self.hideXScrollbar = false;
//		self.hideYScrollbar = false;
//		self.maxZoomFactor = @(20);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	[dictRep setObject:@(self.hideXScrollbar) forKey:@"hideXScrollbar"];

	[dictRep setObject:@(self.hideYScrollbar) forKey:@"hideYScrollbar"];

	if (self.maxZoomFactor) {
		[dictRep setObject:self.maxZoomFactor forKey:@"maxZoomFactor"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"amXYChart\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end