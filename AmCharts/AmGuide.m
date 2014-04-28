// 
//  AmGuide.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmGuide.h"
#import "AmCategories.h"
#import "AmValueAxis.h"


@implementation AmGuide

- (id)init {
	self = [super init];
	if (self) {
		self.above = false;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	[dictRep setObject:@(self.above) forKey:@"above"];

	if (self.angle) {
		[dictRep setObject:self.angle forKey:@"angle"];
	}

	if (self.balloonColor) {
		[dictRep setObject:self.balloonColor forKey:@"balloonColor"];
	}

	if (self.balloonText) {
		[dictRep setObject:self.balloonText forKey:@"balloonText"];
	}

	if (self.category) {
		[dictRep setObject:self.category forKey:@"category"];
	}

	if (self.dashLength) {
		[dictRep setObject:self.dashLength forKey:@"dashLength"];
	}

	if (self.date) {
		[dictRep setObject:self.date forKey:@"date"];
	}

	if (self.fillAlpha) {
		[dictRep setObject:self.fillAlpha forKey:@"fillAlpha"];
	}

	if (self.fillColor) {
		[dictRep setObject:self.fillColor forKey:@"fillColor"];
	}

	if (self.fontSize) {
		[dictRep setObject:self.fontSize forKey:@"fontSize"];
	}

	if (self.uid) {
		[dictRep setObject:self.uid forKey:@"id"];
	}

	[dictRep setObject:@(self.inside) forKey:@"inside"];

	if (self.label) {
		[dictRep setObject:self.label forKey:@"label"];
	}

	if (self.labelRotation) {
		[dictRep setObject:self.labelRotation forKey:@"labelRotation"];
	}

	if (self.lineAlpha) {
		[dictRep setObject:self.lineAlpha forKey:@"lineAlpha"];
	}

	if (self.lineColor) {
		[dictRep setObject:self.lineColor forKey:@"lineColor"];
	}

	if (self.lineThickness) {
		[dictRep setObject:self.lineThickness forKey:@"lineThickness"];
	}

	if (self.position) {
		[dictRep setObject:self.position forKey:@"position"];
	}

	if (self.tickLength) {
		[dictRep setObject:self.tickLength forKey:@"tickLength"];
	}

	if (self.toAngle) {
		[dictRep setObject:self.toAngle forKey:@"toAngle"];
	}

	if (self.toCategory) {
		[dictRep setObject:self.toCategory forKey:@"toCategory"];
	}

	if (self.toDate) {
		[dictRep setObject:self.toDate forKey:@"toDate"];
	}

	if (self.toValue) {
		[dictRep setObject:self.toValue forKey:@"toValue"];
	}

	if (self.value) {
		[dictRep setObject:self.value forKey:@"value"];
	}

	if (self.valueAxis) {
		[dictRep setObject:[self.valueAxis jsonRepresentation] forKey:@"valueAxis"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"guide\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end