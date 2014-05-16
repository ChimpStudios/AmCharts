// 
//  AmTrendLine.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmTrendLine.h"
#import "AmCategories.h"
#import "AmValueAxis.h"
#import "AmValueAxis.h"


@implementation AmTrendLine

- (id)init {
	self = [super init];
	if (self) {
//		self.dashLength = @(0);
//		self.isProtected = false;
//		self.lineAlpha = @(1);
//		self.lineColor = @"#00CC00";
//		self.lineThickness = @(1);
		self.valueAxis = [[AmValueAxis alloc] init];
		self.valueAxisX = [[AmValueAxis alloc] init];
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.dashLength) {
		[dictRep setObject:self.dashLength forKey:@"dashLength"];
	}

	if (self.finalCategory) {
		[dictRep setObject:self.finalCategory forKey:@"finalCategory"];
	}

	if (self.finalDate) {
		[dictRep setObject:self.finalDate forKey:@"finalDate"];
	}

	if (self.finalValue) {
		[dictRep setObject:self.finalValue forKey:@"finalValue"];
	}

	if (self.finalXValue) {
		[dictRep setObject:self.finalXValue forKey:@"finalXValue"];
	}

	if (self.uid) {
		[dictRep setObject:self.uid forKey:@"id"];
	}

	if (self.initialCategory) {
		[dictRep setObject:self.initialCategory forKey:@"initialCategory"];
	}

	if (self.initialDate) {
		[dictRep setObject:self.initialDate forKey:@"initialDate"];
	}

	if (self.initialValue) {
		[dictRep setObject:self.initialValue forKey:@"initialValue"];
	}

	if (self.initialXValue) {
		[dictRep setObject:self.initialXValue forKey:@"initialXValue"];
	}

	[dictRep setObject:@(self.isProtected) forKey:@"isProtected"];

	if (self.lineAlpha) {
		[dictRep setObject:self.lineAlpha forKey:@"lineAlpha"];
	}

	if (self.lineColor) {
		[dictRep setObject:self.lineColor forKey:@"lineColor"];
	}

	if (self.lineThickness) {
		[dictRep setObject:self.lineThickness forKey:@"lineThickness"];
	}

	if (self.valueAxis) {
		[dictRep setObject:[self.valueAxis dictionaryRepresentation] forKey:@"valueAxis"];
	}

	if (self.valueAxisX) {
		[dictRep setObject:[self.valueAxisX dictionaryRepresentation] forKey:@"valueAxisX"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"trendLine\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end