// 
//  AmSerialChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmSerialChart.h"
#import "AmCategories.h"
#import "AmCategoryAxis.h"


@implementation AmSerialChart

- (id)init {
	self = [super init];
	if (self) {
//		self.balloonDateFormat = @"MMM DD, YYYY";
		self.categoryAxis = [[AmCategoryAxis alloc] init];
//		self.columnSpacing = @(5);
//		self.columnSpacing3D = @(0);
//		self.columnWidth = @(0.8);
//		self.minSelectedTime = @(0);
//		self.mouseWheelScrollEnabled = false;
//		self.rotate = false;
//		self.zoomOutOnDataUpdate = true;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	if (self.balloonDateFormat) {
		[dictRep setObject:self.balloonDateFormat forKey:@"balloonDateFormat"];
	}

	if (self.categoryAxis) {
		[dictRep setObject:[self.categoryAxis dictionaryRepresentation] forKey:@"categoryAxis"];
	}

	if (self.categoryField) {
		[dictRep setObject:self.categoryField forKey:@"categoryField"];
	}

	if (self.columnSpacing) {
		[dictRep setObject:self.columnSpacing forKey:@"columnSpacing"];
	}

	if (self.columnSpacing3D) {
		[dictRep setObject:self.columnSpacing3D forKey:@"columnSpacing3D"];
	}

	if (self.columnWidth) {
		[dictRep setObject:self.columnWidth forKey:@"columnWidth"];
	}

	if (self.dataDateFormat) {
		[dictRep setObject:self.dataDateFormat forKey:@"dataDateFormat"];
	}

	if (self.endDate) {
		[dictRep setObject:self.endDate forKey:@"endDate"];
	}

	if (self.endIndex) {
		[dictRep setObject:self.endIndex forKey:@"endIndex"];
	}

	if (self.maxSelectedSeries) {
		[dictRep setObject:self.maxSelectedSeries forKey:@"maxSelectedSeries"];
	}

	if (self.maxSelectedTime) {
		[dictRep setObject:self.maxSelectedTime forKey:@"maxSelectedTime"];
	}

	if (self.minSelectedTime) {
		[dictRep setObject:self.minSelectedTime forKey:@"minSelectedTime"];
	}

    if (self.mouseWheelScrollEnabled) {
        [dictRep setObject:self.mouseWheelScrollEnabled forKey:@"mouseWheelScrollEnabled"];
    }
	
    if (self.rotate) {
        [dictRep setObject:self.rotate forKey:@"rotate"];
    }

	if (self.startDate) {
		[dictRep setObject:self.startDate forKey:@"startDate"];
	}

	if (self.startIndex) {
		[dictRep setObject:self.startIndex forKey:@"startIndex"];
	}

    if (self.zoomOutOnDataUpdate) {
        [dictRep setObject:self.zoomOutOnDataUpdate forKey:@"zoomOutOnDataUpdate"];
    }
	
	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];
	return [dictRep JSONString];
}

@end