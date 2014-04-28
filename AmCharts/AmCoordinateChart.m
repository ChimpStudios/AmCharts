// 
//  AmCoordinateChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmCoordinateChart.h"
#import "AmCategories.h"
#import "AmGraph.h"
#import "AmGuide.h"
#import "AmValueAxis.h"

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
        NSMutableArray *tmpArr = [[NSMutableArray alloc] initWithCapacity:self.graphs.count];
        for (AmGraph *graph in self.graphs) {
            // only add appropriate class items
            if ([graph.class isSubclassOfClass:[AmGraph class]]) {
                [tmpArr addObject:[graph dictionaryRepresentation]];
            }
        }
		[dictRep setObject:tmpArr forKey:@"graphs"];
	}

	[dictRep setObject:@(self.gridAboveGraphs) forKey:@"gridAboveGraphs"];

	if (self.guides) {
        NSMutableArray *tmpArr = [[NSMutableArray alloc] initWithCapacity:self.guides.count];
        for (AmGuide *guide in self.guides) {
            // only add appropriate class items
            if ([guide.class isSubclassOfClass:[AmGuide class]]) {
                [tmpArr addObject:[guide dictionaryRepresentation]];
            }
        }
		[dictRep setObject:tmpArr forKey:@"guides"];
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
        NSMutableArray *tmpArr = [[NSMutableArray alloc] initWithCapacity:self.valueAxes.count];
        for (AmValueAxis *valueAxis in self.valueAxes) {
            // only add appropriate class items
            if ([valueAxis.class isSubclassOfClass:[AmValueAxis class]]) {
                [tmpArr addObject:[valueAxis dictionaryRepresentation]];
            }
        }
		[dictRep setObject:tmpArr forKey:@"valueAxes"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];
	return [dictRep JSONString];
}

@end