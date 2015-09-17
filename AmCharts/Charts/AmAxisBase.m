// 
//  AmAxisBase.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmAxisBase.h"
#import "AmCategories.h"
#import "AmGuide.h"

@implementation AmAxisBase

- (id)init {
	self = [super init];
	if (self) {
		//self.autoGridCount = true;
		//self.axisAlpha = @(1);
		//self.axisColor = @"#000000";
//		self.axisThickness = @(1);
//		//self.dashLength = @(0);
//		self.fillAlpha = @(0);
//		self.fillColor = @"#FFFFFF";
		//self.gridAlpha = @(0.15);
		//self.gridColor = @"#000000";
//		self.gridCount = @(5);
//		self.gridThickness = @(1);
//		self.guides = [@[] mutableCopy];
//		self.ignoreAxisWidth = false;
//		self.inside = false;
//		self.labelFrequency = @(1);
//		self.labelRotation = @(0);
	//	self.labelsEnabled = true;
//		self.minHorizontalGap = @(75);
//		self.minorGridAlpha = @(0.07);
//		self.minorGridEnabled = false;
//		self.minVerticalGap = @(35);
//		self.offset = @(0);
//		self.position = @"bottom";
	//	self.showFirstLabel = true;
	//	self.showLastLabel = true;
		//self.tickLength = @(5);
	//	self.titleBold = true;
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

	if (self.axisX) {
		[dictRep setObject:self.axisX forKey:@"axisX"];
	}

	if (self.axisY) {
		[dictRep setObject:self.axisY forKey:@"axisY"];
	}

    if (self.boldLabels) {
        [dictRep setObject:self.boldLabels forKey:@"boldLabels"];
    }
    
	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.dashLength) {
		[dictRep setObject:self.dashLength forKey:@"dashLength"];
	}
    
    if (self.dateFormats) {
        [dictRep setObject:self.dateFormats forKey:@"dateFormats"];
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

    if (self.ignoreAxisWidth) {
        [dictRep setObject:self.ignoreAxisWidth forKey:@"ignoreAxisWidth"];
    }

    if (self.inside) {
        [dictRep setObject:self.inside forKey:@"inside"];
    }
	

	if (self.labelFrequency) {
		[dictRep setObject:self.labelFrequency forKey:@"labelFrequency"];
	}
    
    if (self.labelOffset) {
		[dictRep setObject:self.labelOffset forKey:@"labelOffset"];
	}

	if (self.labelRotation) {
		[dictRep setObject:self.labelRotation forKey:@"labelRotation"];
	}

    if (self.labelsEnabled) {
       [dictRep setObject:self.labelsEnabled forKey:@"labelsEnabled"];
    }
	
	if (self.minHorizontalGap) {
		[dictRep setObject:self.minHorizontalGap forKey:@"minHorizontalGap"];
	}

	if (self.minorGridAlpha) {
		[dictRep setObject:self.minorGridAlpha forKey:@"minorGridAlpha"];
	}

    if (self.minorGridEnabled) {
        [dictRep setObject:self.minorGridEnabled forKey:@"minorGridEnabled"];
    }

	if (self.minVerticalGap) {
		[dictRep setObject:self.minVerticalGap forKey:@"minVerticalGap"];
	}

	if (self.offset) {
		[dictRep setObject:self.offset forKey:@"offset"];
	}

	if (self.position) {
		[dictRep setObject:self.position forKey:@"position"];
	}

    if (self.showFirstLabel) {
        [dictRep setObject:self.showFirstLabel forKey:@"showFirstLabel"];
    }
	
    if (self.showLastLabel) {
        [dictRep setObject:self.showLastLabel forKey:@"showLastLabel"];
    }

	if (self.tickLength) {
		[dictRep setObject:self.tickLength forKey:@"tickLength"];
	}

	if (self.title) {
		[dictRep setObject:self.title forKey:@"title"];
	}

    if (self.titleBold) {
       [dictRep setObject:self.titleBold forKey:@"titleBold"];
    }

	if (self.titleColor) {
		[dictRep setObject:self.titleColor forKey:@"titleColor"];
	}

	if (self.titleFontSize) {
		[dictRep setObject:self.titleFontSize forKey:@"titleFontSize"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"axisBase\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end