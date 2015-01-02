// 
//  AmGraphDataItem.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmGraphDataItem.h"
#import "AmCategories.h"
#import "AmSerialDataItem.h"


@implementation AmGraphDataItem

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

	if (self.bullet) {
		[dictRep setObject:self.bullet forKey:@"bullet"];
	}

	if (self.bulletSize) {
		[dictRep setObject:self.bulletSize forKey:@"bulletSize"];
	}

	if (self.category) {
		[dictRep setObject:self.category forKey:@"category"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.customBullet) {
		[dictRep setObject:self.customBullet forKey:@"customBullet"];
	}

	if (self.dataContext) {
		[dictRep setObject:self.dataContext forKey:@"dataContext"];
	}

	if (self.amDescription) {
		[dictRep setObject:self.amDescription forKey:@"description"];
	}

	if (self.fillColors) {
		[dictRep setObject:self.fillColors forKey:@"fillColors"];
	}

	if (self.percents) {
		[dictRep setObject:self.percents forKey:@"percents"];
	}

	if (self.serialDataItem) {
		[dictRep setObject:[self.serialDataItem dictionaryRepresentation] forKey:@"serialDataItem"];
	}

	if (self.url) {
		[dictRep setObject:self.url forKey:@"url"];
	}

	if (self.values) {
		[dictRep setObject:self.values forKey:@"values"];
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

	NSString *jsonRep = [NSString stringWithFormat:@"\"graphDataItem\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end