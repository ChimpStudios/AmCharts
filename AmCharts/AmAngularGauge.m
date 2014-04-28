// 
//  AmAngularGauge.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmAngularGauge.h"
#import "AmCategories.h"


@implementation AmAngularGauge

- (id)init {
	self = [super init];
	if (self) {
		self.adjustSize = true;
		self.clockWiseOnly = false;
		self.faceAlpha = @(0);
		self.faceBorderAlpha = @(0);
		self.faceBorderColor = @"#555555";
		self.faceBorderWidth = @(1);
		self.faceColor = @"#FAFAFA";
		self.marginBottom = @(10);
		self.marginLeft = @(10);
		self.marginRight = @(10);
		self.marginTop = @(10);
		self.minRadius = @(10);
		self.startDuration = @(1);
		self.startEffect = @"easeInSine";
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	[dictRep setObject:@(self.adjustSize) forKey:@"adjustSize"];

	if (self.arrows) {
		[dictRep setObject:self.arrows forKey:@"arrows"];
	}

	if (self.axes) {
		[dictRep setObject:self.axes forKey:@"axes"];
	}

	[dictRep setObject:@(self.clockWiseOnly) forKey:@"clockWiseOnly"];

	if (self.faceAlpha) {
		[dictRep setObject:self.faceAlpha forKey:@"faceAlpha"];
	}

	if (self.faceBorderAlpha) {
		[dictRep setObject:self.faceBorderAlpha forKey:@"faceBorderAlpha"];
	}

	if (self.faceBorderColor) {
		[dictRep setObject:self.faceBorderColor forKey:@"faceBorderColor"];
	}

	if (self.faceBorderWidth) {
		[dictRep setObject:self.faceBorderWidth forKey:@"faceBorderWidth"];
	}

	if (self.faceColor) {
		[dictRep setObject:self.faceColor forKey:@"faceColor"];
	}

	if (self.facePattern) {
		[dictRep setObject:self.facePattern forKey:@"facePattern"];
	}

	if (self.gaugeX) {
		[dictRep setObject:self.gaugeX forKey:@"gaugeX"];
	}

	if (self.gaugeY) {
		[dictRep setObject:self.gaugeY forKey:@"gaugeY"];
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

	if (self.minRadius) {
		[dictRep setObject:self.minRadius forKey:@"minRadius"];
	}

	if (self.startDuration) {
		[dictRep setObject:self.startDuration forKey:@"startDuration"];
	}

	if (self.startEffect) {
		[dictRep setObject:self.startEffect forKey:@"startEffect"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"amAngularGauge\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end