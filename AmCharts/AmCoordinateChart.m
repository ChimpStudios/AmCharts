// 
//  AmCoordinateChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmCoordinateChart.h"
#import "AmCategories.h"


@implementation AmCoordinateChart

- (id)init {
	self = [super init];
	if (self) {
		self.colors = [@[@"#FF6600",
                         @"#FCD202",
                         @"#B0DE09",
                         @"#0D8ECF",
                         @"#2A0CD0",
                         @"#CD0D74",
                         @"#CC0000",
                         @"#00CC00",
                         @"#0000CC",
                         @"#DDDDDD",
                         @"#999999",
                         @"#333333",
                         @"#990000"] mutableCopy];
		self.gridAboveGraphs = false;
		self.guides = [@[] mutableCopy];
		self.sequencedAnimation = true;
		self.startAlpha = @(1);
		self.startDuration = @(0);
		self.startEffect = @"elastic";
		self.urlTarget = @"_self";
		self.valueAxes = [@[] mutableCopy];
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	if (self.chartData) {
		[dictRep setObject:self.chartData forKey:@"chartData"];
	}

	if (self.colors) {
		[dictRep setObject:self.colors forKey:@"colors"];
	}

	if (self.graphs) {
		[dictRep setObject:self.graphs forKey:@"graphs"];
	}

	[dictRep setObject:@(self.gridAboveGraphs) forKey:@"gridAboveGraphs"];

	if (self.guides) {
		[dictRep setObject:self.guides forKey:@"guides"];
	}

	[dictRep setObject:@(self.sequencedAnimation) forKey:@"sequencedAnimation"];

	if (self.startAlpha) {
		[dictRep setObject:self.startAlpha forKey:@"startAlpha"];
	}

	if (self.startDuration) {
		[dictRep setObject:self.startDuration forKey:@"startDuration"];
	}

	if (self.startEffect) {
		[dictRep setObject:self.startEffect forKey:@"startEffect"];
	}

	if (self.urlTarget) {
		[dictRep setObject:self.urlTarget forKey:@"urlTarget"];
	}

	if (self.valueAxes) {
		[dictRep setObject:self.valueAxes forKey:@"valueAxes"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"amCoordinateChart\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end