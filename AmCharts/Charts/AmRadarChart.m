// 
//  AmRadarChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmRadarChart.h"
#import "AmCategories.h"


@implementation AmRadarChart

- (id)init {
	self = [super init];
	if (self) {
//		self.marginBottom = @(0);
//		self.marginLeft = @(0);
//		self.marginRight = @(0);
//		self.marginTop = @(0);
//		self.radius = @"35%";
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	if (self.categoryField) {
		[dictRep setObject:self.categoryField forKey:@"categoryField"];
	}

	if (self.marginBottom) {
		[dictRep setObject:self.marginBottom forKey:@"marginBottom"];
	}

	if (self.marginLeft) {
		[dictRep setObject:self.marginLeft forKey:@"marginLeft"];
	}

	if (self.marginRight) {
		[dictRep setObject:self.marginRight forKey:@"marginRight"];
	}

	if (self.marginTop) {
		[dictRep setObject:self.marginTop forKey:@"marginTop"];
	}

	if (self.radius) {
		[dictRep setObject:self.radius forKey:@"radius"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];
	return [dictRep JSONString];
}

@end