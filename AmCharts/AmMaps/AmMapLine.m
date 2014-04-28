// 
//  AmMapLine.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmMapLine.h"
#import "AmCategories.h"


@implementation AmMapLine

- (id)init {
	self = [super init];
	if (self) {
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

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

	if (self.dashLength) {
		[dictRep setObject:self.dashLength forKey:@"dashLength"];
	}

	if (self.latitudes) {
		[dictRep setObject:self.latitudes forKey:@"latitudes"];
	}

	if (self.longitudes) {
		[dictRep setObject:self.longitudes forKey:@"longitudes"];
	}

	if (self.thickness) {
		[dictRep setObject:self.thickness forKey:@"thickness"];
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

	NSString *jsonRep = [NSString stringWithFormat:@"\"mapLine\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end