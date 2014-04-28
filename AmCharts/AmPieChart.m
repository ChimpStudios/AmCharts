// 
//  AmPieChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmPieChart.h"
#import "AmCategories.h"


@implementation AmPieChart

- (id)init {
	self = [super init];
	if (self) {
		self.angle = @(0);
		self.balloonText = @"[[title]]: [[percents]]% ([[value]])\n[[description]]";
		self.depth3D = @(0);
		self.innerRadius = @"0";
		self.labelRadius = @(20);
		self.labelText = @"[[title]]: [[percents]]%";
		self.minRadius = @(10);
		self.pieAlpha = @(1);
		self.pullOutRadius = @"20%";
		self.startAngle = @(90);
		self.startRadius = @"500%";
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	if (self.angle) {
		[dictRep setObject:self.angle forKey:@"angle"];
	}

	if (self.balloonText) {
		[dictRep setObject:self.balloonText forKey:@"balloonText"];
	}

	if (self.depth3D) {
		[dictRep setObject:self.depth3D forKey:@"depth3D"];
	}

	if (self.innerRadius) {
		[dictRep setObject:self.innerRadius forKey:@"innerRadius"];
	}

	if (self.labelRadius) {
		[dictRep setObject:self.labelRadius forKey:@"labelRadius"];
	}

	if (self.labelRadiusField) {
		[dictRep setObject:self.labelRadiusField forKey:@"labelRadiusField"];
	}

	if (self.labelText) {
		[dictRep setObject:self.labelText forKey:@"labelText"];
	}

	if (self.minRadius) {
		[dictRep setObject:self.minRadius forKey:@"minRadius"];
	}

	if (self.pieAlpha) {
		[dictRep setObject:self.pieAlpha forKey:@"pieAlpha"];
	}

	if (self.pieX) {
		[dictRep setObject:self.pieX forKey:@"pieX"];
	}

	if (self.pieY) {
		[dictRep setObject:self.pieY forKey:@"pieY"];
	}

	if (self.pullOutRadius) {
		[dictRep setObject:self.pullOutRadius forKey:@"pullOutRadius"];
	}

	if (self.radius) {
		[dictRep setObject:self.radius forKey:@"radius"];
	}

	if (self.startAngle) {
		[dictRep setObject:self.startAngle forKey:@"startAngle"];
	}

	if (self.startRadius) {
		[dictRep setObject:self.startRadius forKey:@"startRadius"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];
	return [dictRep JSONString];
}

@end