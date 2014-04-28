// 
//  AmCategoryAxis.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmCategoryAxis.h"
#import "AmCategories.h"

@implementation AmCategoryAxis

- (id)init {
	self = [super init];
	if (self) {
		self.autoWrap = false;
		self.boldPeriodBeginning = true;
		self.centerLabelOnFullPeriod = true;
		self.dateFormats = [@[
              @{@"period":@"fff",@"format":@"JJ:NN:SS"},
              @{@"period":@"ss",@"format":@"JJ:NN:SS"},
              @{@"period":@"mm",@"format":@"JJ:NN"},
              @{@"period":@"hh",@"format":@"JJ:NN"},
              @{@"period":@"DD",@"format":@"MMM DD"},
              @{@"period":@"WW",@"format":@"MMM DD"},
              @{@"period":@"MM",@"format":@"MMM"},
              @{@"period":@"YYYY",@"format":@"YYYY"}
          ] mutableCopy];
		self.equalSpacing = false;
		self.firstDayOfWeek  = @(1);
		self.gridPosition = @"middle";
		self.markPeriodChange = true;
		self.minPeriod = @"DD";
		self.parseDates = false;
		self.position = @"bottom";
		self.startOnAxis = false;
		self.twoLineMode  = false;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	if (self.autoRotateAngle) {
		[dictRep setObject:self.autoRotateAngle forKey:@"autoRotateAngle"];
	}

	if (self.autoRotateCount) {
		[dictRep setObject:self.autoRotateCount forKey:@"autoRotateCount"];
	}

	[dictRep setObject:@(self.autoWrap) forKey:@"autoWrap"];

	[dictRep setObject:@(self.boldPeriodBeginning) forKey:@"boldPeriodBeginning"];

	if (self.categoryFunction) {
		[dictRep setObject:[self.categoryFunction javascriptRepresentation] forKey:@"categoryFunction"];
	}

	[dictRep setObject:@(self.centerLabelOnFullPeriod) forKey:@"centerLabelOnFullPeriod"];

	if (self.dateFormats) {
		[dictRep setObject:self.dateFormats forKey:@"dateFormats"];
	}

	[dictRep setObject:@(self.equalSpacing) forKey:@"equalSpacing"];

	if (self.firstDayOfWeek ) {
		[dictRep setObject:self.firstDayOfWeek  forKey:@"firstDayOfWeek "];
	}

	if (self.forceShowField) {
		[dictRep setObject:self.forceShowField forKey:@"forceShowField"];
	}

	if (self.gridPosition) {
		[dictRep setObject:self.gridPosition forKey:@"gridPosition"];
	}

	if (self.labelFunction) {
		[dictRep setObject:[self.labelFunction javascriptRepresentation] forKey:@"labelFunction"];
	}

	[dictRep setObject:@(self.markPeriodChange) forKey:@"markPeriodChange"];

	if (self.minPeriod) {
		[dictRep setObject:self.minPeriod forKey:@"minPeriod"];
	}

	[dictRep setObject:@(self.parseDates) forKey:@"parseDates"];

	if (self.position) {
		[dictRep setObject:self.position forKey:@"position"];
	}

	[dictRep setObject:@(self.startOnAxis) forKey:@"startOnAxis"];

	[dictRep setObject:@(self.twoLineMode ) forKey:@"twoLineMode "];

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"categoryAxis\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end