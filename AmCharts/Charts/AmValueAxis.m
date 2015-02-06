// 
//  AmValueAxis.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmValueAxis.h"
#import "AmCategories.h"
#import "AmValueAxis.h"


@implementation AmValueAxis

- (id)init {
	self = [super init];
	if (self) {
//		self.axisTitleOffset = @(10);
//		self.baseValue = @(0);
//		self.durationUnits = @"{DD:'d. ', hh:':', mm:':',ss:''}";
//		self.gridType = @"polygons";
//		self.includeGuidesInMinMax = false;
//		self.includeHidden = false;
//		self.integersOnly = false;
//		self.logarithmic = false;
//		self.minMaxMultiplier = @(1);
//		self.position = @"left";
		self.radarCategoriesEnabled = true;
//		self.recalculateToPercents = false;
//		self.reversed = false;
//		self.stackType = @"none";
//		self.unitPosition = @"right";
//		self.usePrefixes = false;
//		self.useScientificNotation = false;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	if (self.axisTitleOffset) {
		[dictRep setObject:self.axisTitleOffset forKey:@"axisTitleOffset"];
	}

	if (self.baseCoord) {
		[dictRep setObject:self.baseCoord forKey:@"baseCoord"];
	}

	if (self.baseValue) {
		[dictRep setObject:self.baseValue forKey:@"baseValue"];
	}

	if (self.duration) {
		[dictRep setObject:self.duration forKey:@"duration"];
	}

	if (self.durationUnits) {
		[dictRep setObject:self.durationUnits forKey:@"durationUnits"];
	}

	if (self.gridType) {
		[dictRep setObject:self.gridType forKey:@"gridType"];
	}

	if (self.uid) {
		[dictRep setObject:self.uid forKey:@"id"];
	}

	[dictRep setObject:@(self.includeGuidesInMinMax) forKey:@"includeGuidesInMinMax"];

	[dictRep setObject:@(self.includeHidden) forKey:@"includeHidden"];

	[dictRep setObject:@(self.integersOnly) forKey:@"integersOnly"];

	if (self.labelFunction) {
		[dictRep setObject:[self.labelFunction dictionaryRepresentation] forKey:@"labelFunction"];
	}

	[dictRep setObject:@(self.logarithmic) forKey:@"logarithmic"];

	if (self.max) {
		[dictRep setObject:self.max forKey:@"max"];
	}

	if (self.maximum) {
		[dictRep setObject:self.maximum forKey:@"maximum"];
	}

	if (self.min) {
		[dictRep setObject:self.min forKey:@"min"];
	}

	if (self.minimum) {
		[dictRep setObject:self.minimum forKey:@"minimum"];
	}

	if (self.minMaxMultiplier) {
		[dictRep setObject:self.minMaxMultiplier forKey:@"minMaxMultiplier"];
	}

	if (self.position) {
		[dictRep setObject:self.position forKey:@"position"];
	}

	if (self.precision) {
		[dictRep setObject:self.precision forKey:@"precision"];
	}

	[dictRep setObject:@(self.radarCategoriesEnabled) forKey:@"radarCategoriesEnabled"];

	[dictRep setObject:@(self.recalculateToPercents) forKey:@"recalculateToPercents"];

	[dictRep setObject:@(self.reversed) forKey:@"reversed"];

	if (self.stackType) {
		[dictRep setObject:self.stackType forKey:@"stackType"];
	}

	if (self.step) {
		[dictRep setObject:self.step forKey:@"step"];
	}

	if (self.synchronizationMultiplier) {
		[dictRep setObject:self.synchronizationMultiplier forKey:@"synchronizationMultiplier"];
	}

	if (self.synchronizeWith) {
		[dictRep setObject:[self.synchronizeWith dictionaryRepresentation] forKey:@"synchronizeWith"];
	}

	if (self.totalText) {
		[dictRep setObject:self.totalText forKey:@"totalText"];
	}

	if (self.totalTextColor) {
		[dictRep setObject:self.totalTextColor forKey:@"totalTextColor"];
	}
    
    if (self.totalTextOffset) {
        [dictRep setObject:self.totalTextOffset forKey:@"totalTextOffset"];
    }
    
    if (self.treatZeroAs) {
        [dictRep setObject:self.treatZeroAs forKey:@"treatZeroAs"];
    }

	if (self.unit) {
		[dictRep setObject:self.unit forKey:@"unit"];
	}

	if (self.unitPosition) {
		[dictRep setObject:self.unitPosition forKey:@"unitPosition"];
	}

	[dictRep setObject:@(self.usePrefixes) forKey:@"usePrefixes"];

	[dictRep setObject:@(self.useScientificNotation) forKey:@"useScientificNotation"];

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"valueAxis\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end