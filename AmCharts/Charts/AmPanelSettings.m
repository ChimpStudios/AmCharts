// 
//  AmPanelSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmPanelSettings.h"
#import "AmCategories.h"


@implementation AmPanelSettings

- (id)init {
	self = [super init];
	if (self) {
//		self.backgroundAlpha = @(0);
//		self.backgroundColor = @"#FFFFFF";
//		self.creditsPosition = @"top-right";
//		self.marginBottom = @(0);
//		self.marginLeft = @(0);
//		self.marginRight = @(0);
//		self.marginTop = @(0);
//		self.panelSpacing = @(8);
//		self.panEventsEnabled = false;
//		self.prefixesOfBigNumbers = [@[
//                                        @{@"number":@"1e+3",@"prefix":@"k"},
//                                        @{@"number":@"1e+6",@"prefix":@"M"},
//                                        @{@"number":@"1e+9",@"prefix":@"G"},
//                                        @{@"number":@"1e+12",@"prefix":@"T"},
//                                        @{@"number":@"1e+15",@"prefix":@"P"},
//                                        @{@"number":@"1e+18",@"prefix":@"E"},
//                                        @{@"number":@"1e+21",@"prefix":@"Z"},
//                                        @{@"number":@"1e+24",@"prefix":@"Y"}
//                                       ] mutableCopy];
//		self.prefixesOfSmallNumbers = [@[
//                                        @{@"number":@"1e-24", @"prefix":@"y"},
//                                        @{@"number":@"1e-21", @"prefix":@"z"},
//                                        @{@"number":@"1e-18", @"prefix":@"a"},
//                                        @{@"number":@"1e-15", @"prefix":@"f"},
//                                        @{@"number":@"1e-12", @"prefix":@"p"},
//                                        @{@"number":@"1e-9", @"prefix":@"n"},
//                                        @{@"number":@"1e-6", @"prefix":@"μ"},
//                                        @{@"number":@"1e-3", @"prefix":@"m"}
//                                        ] mutableCopy];
//		self.recalculateToPercents = @"whenComparing";
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.angle) {
		[dictRep setObject:self.angle forKey:@"angle"];
	}

	if (self.backgroundAlpha) {
		[dictRep setObject:self.backgroundAlpha forKey:@"backgroundAlpha"];
	}

	if (self.backgroundColor) {
		[dictRep setObject:self.backgroundColor forKey:@"backgroundColor"];
	}

	if (self.columnSpacing) {
		[dictRep setObject:self.columnSpacing forKey:@"columnSpacing"];
	}

	if (self.columnWidth) {
		[dictRep setObject:self.columnWidth forKey:@"columnWidth"];
	}

	if (self.creditsPosition) {
		[dictRep setObject:self.creditsPosition forKey:@"creditsPosition"];
	}

	if (self.decimalSeparator) {
		[dictRep setObject:self.decimalSeparator forKey:@"decimalSeparator"];
	}

	if (self.depth3D) {
		[dictRep setObject:self.depth3D forKey:@"depth3D"];
	}

	if (self.fontFamily) {
		[dictRep setObject:self.fontFamily forKey:@"fontFamily"];
	}

	if (self.fontSize) {
		[dictRep setObject:self.fontSize forKey:@"fontSize"];
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

	if (self.panelSpacing) {
		[dictRep setObject:self.panelSpacing forKey:@"panelSpacing"];
	}

    if (self.panEventsEnabled) {
       [dictRep setObject:self.panEventsEnabled forKey:@"panEventsEnabled"];
    }

	if (self.percentPrecision) {
		[dictRep setObject:self.percentPrecision forKey:@"percentPrecision"];
	}

	if (self.plotAreaBorderAlpha) {
		[dictRep setObject:self.plotAreaBorderAlpha forKey:@"plotAreaBorderAlpha"];
	}

	if (self.plotAreaBorderColor) {
		[dictRep setObject:self.plotAreaBorderColor forKey:@"plotAreaBorderColor"];
	}

	if (self.plotAreaFillAlphas) {
		[dictRep setObject:self.plotAreaFillAlphas forKey:@"plotAreaFillAlphas"];
	}

	if (self.plotAreaFillColors) {
		[dictRep setObject:self.plotAreaFillColors forKey:@"plotAreaFillColors"];
	}

	if (self.precision) {
		[dictRep setObject:self.precision forKey:@"precision"];
	}

	if (self.prefixesOfBigNumbers) {
		[dictRep setObject:self.prefixesOfBigNumbers forKey:@"prefixesOfBigNumbers"];
	}

	if (self.prefixesOfSmallNumbers) {
		[dictRep setObject:self.prefixesOfSmallNumbers forKey:@"prefixesOfSmallNumbers"];
	}

	if (self.recalculateToPercents) {
		[dictRep setObject:self.recalculateToPercents forKey:@"recalculateToPercents"];
	}

    if (self.sequencedAnimation) {
        [dictRep setObject:self.sequencedAnimation forKey:@"sequencedAnimation"];
    }

	if (self.startAlpha) {
		[dictRep setObject:self.startAlpha forKey:@"startAlpha"];
	}

	if (self.startDuration) {
		[dictRep setObject:self.startDuration forKey:@"startDuration"];
	}

	if (self.startEffect) {
		[dictRep setObject:self.startEffect forKey:@"startEffect"];
	}

	if (self.thousandsSeparator) {
		[dictRep setObject:self.thousandsSeparator forKey:@"thousandsSeparator"];
	}

    if (self.usePrefixes) {
        [dictRep setObject:self.usePrefixes forKey:@"usePrefixes"];
    }

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"panelSettings\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end