// 
//  AmSerialDataItem.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmSerialDataItem.h"
#import "AmCategories.h"


@implementation AmSerialDataItem

- (id)init {
	self = [super init];
	if (self) {
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.axes) {
		[dictRep setObject:self.axes forKey:@"axes"];
	}

	if (self.category) {
		[dictRep setObject:self.category forKey:@"category"];
	}

	if (self.dataContext) {
		[dictRep setObject:self.dataContext forKey:@"dataContext"];
	}

	if (self.time) {
		[dictRep setObject:self.time forKey:@"time"];
	}

	if (self.x) {
		[dictRep setObject:self.x forKey:@"x"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"serialDataItem\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end