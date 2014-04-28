// 
//  AmFunnelChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmFunnelChart.h"
#import "AmCategories.h"


@implementation AmFunnelChart

- (id)init {
	self = [super init];
	if (self) {
		self.balloonText = @"[[title]]: [[value]]\n[[description]]";
		self.baseWidth = @"100%";
		self.labelPosition = @"center";
		self.labelText = @"[[title]]: [[value]]";
		self.neckHeight = @"0";
		self.neckWidth = @"0";
		self.pullDistance = @"30";
		self.rotate = false;
		self.startX = @(0);
		self.startY = @(0);
		self.valueRepresents = @"height";
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	if (self.balloonText) {
		[dictRep setObject:self.balloonText forKey:@"balloonText"];
	}

	if (self.baseWidth) {
		[dictRep setObject:self.baseWidth forKey:@"baseWidth"];
	}

	if (self.labelPosition) {
		[dictRep setObject:self.labelPosition forKey:@"labelPosition"];
	}

	if (self.labelText) {
		[dictRep setObject:self.labelText forKey:@"labelText"];
	}

	if (self.neckHeight) {
		[dictRep setObject:self.neckHeight forKey:@"neckHeight"];
	}

	if (self.neckWidth) {
		[dictRep setObject:self.neckWidth forKey:@"neckWidth"];
	}

	if (self.pullDistance) {
		[dictRep setObject:self.pullDistance forKey:@"pullDistance"];
	}

	[dictRep setObject:@(self.rotate) forKey:@"rotate"];

	if (self.startX) {
		[dictRep setObject:self.startX forKey:@"startX"];
	}

	if (self.startY) {
		[dictRep setObject:self.startY forKey:@"startY"];
	}

	if (self.valueRepresents) {
		[dictRep setObject:self.valueRepresents forKey:@"valueRepresents"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];
	return [dictRep JSONString];
}

@end