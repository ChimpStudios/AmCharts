// 
//  AmValueAxesSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmValueAxesSettings.h"
#import "AmCategories.h"


@implementation AmValueAxesSettings

- (id)init {
	self = [super init];
	if (self) {
	//	self.autoGridCount = @(true);
//		self.axisAlpha = @(0);
	//	self.inside = @(true);
//		self.tickLength = @(0);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

    if (self.autoGridCount) {
        [dictRep setObject:self.autoGridCount forKey:@"autoGridCount"];
    }

	if (self.axisAlpha) {
		[dictRep setObject:self.axisAlpha forKey:@"axisAlpha"];
	}

	if (self.axisColor) {
		[dictRep setObject:self.axisColor forKey:@"axisColor"];
	}

	if (self.axisThickness) {
		[dictRep setObject:self.axisThickness forKey:@"axisThickness"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.dashLength) {
		[dictRep setObject:self.dashLength forKey:@"dashLength"];
	}

	if (self.fillAlpha) {
		[dictRep setObject:self.fillAlpha forKey:@"fillAlpha"];
	}

	if (self.fillColor) {
		[dictRep setObject:self.fillColor forKey:@"fillColor"];
	}

	if (self.gridAlpha) {
		[dictRep setObject:self.gridAlpha forKey:@"gridAlpha"];
	}

	if (self.gridColor) {
		[dictRep setObject:self.gridColor forKey:@"gridColor"];
	}

	if (self.gridCount) {
		[dictRep setObject:self.gridCount forKey:@"gridCount"];
	}

	if (self.gridThickness) {
		[dictRep setObject:self.gridThickness forKey:@"gridThickness"];
	}

    if (self.includeGuidesInMinMax) {
       [dictRep setObject:self.includeGuidesInMinMax forKey:@"includeGuidesInMinMax"];
    }
	
    if (self.includeHidden) {
        [dictRep setObject:self.includeHidden forKey:@"includeHidden"];
    }

    if (self.inside) {
        [dictRep setObject:self.inside forKey:@"inside"];
    }
	
    if (self.integersOnly) {
        [dictRep setObject:self.integersOnly forKey:@"integersOnly"];
    }

	if (self.labelFrequency) {
		[dictRep setObject:self.labelFrequency forKey:@"labelFrequency"];
	}

    if (self.labelsEnabled) {
        [dictRep setObject:self.labelsEnabled forKey:@"labelsEnabled"];
    }
	
    if (self.logarithmic) {
        [dictRep setObject:self.logarithmic forKey:@"logarithmic"];
    }

	if (self.offset) {
		[dictRep setObject:self.offset forKey:@"offset"];
	}

	if (self.position) {
		[dictRep setObject:self.position forKey:@"position"];
	}

    if (self.reversed) {
        [dictRep setObject:self.reversed forKey:@"reversed"];
    }
	
    if (self.showFirstLabel) {
        [dictRep setObject:self.showFirstLabel forKey:@"showFirstLabel"];
    }
	
    if (self.showLastLabel) {
        [dictRep setObject:self.showLastLabel forKey:@"showLastLabel"];
    }

	if (self.stackType) {
		[dictRep setObject:self.stackType forKey:@"stackType"];
	}

	if (self.tickLength) {
		[dictRep setObject:self.tickLength forKey:@"tickLength"];
	}

	if (self.unit) {
		[dictRep setObject:self.unit forKey:@"unit"];
	}

	if (self.unitPosition) {
		[dictRep setObject:self.unitPosition forKey:@"unitPosition"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"valueAxesSettings\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end