// 
//  AmRectangularChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmRectangularChart.h"
#import "AmCategories.h"
#import "AmChartCursor.h"
#import "AmChartScrollbar.h"
#import "AmTrendLine.h"

@implementation AmRectangularChart

- (id)init {
	self = [super init];
	if (self) {
//		self.angle = @(0);
//		self.autoMarginOffset = @(10);
//		self.autoMargins = true;
//		self.depth3D = @(0);
//		self.marginBottom = @(20);
//		self.marginLeft = @(20);
//		self.marginRight = @(20);
//		self.marginsUpdated = false;
//		self.marginTop = @(20);
//		self.plotAreaBorderAlpha = @(0);
//		self.plotAreaBorderColor = @"#000000";
//		self.plotAreaFillAlphas = @(0);
//		self.plotAreaFillColors = @"#FFFFFF";
//		self.plotAreaGradientAngle = @(0);
//		self.zoomOutButtonAlpha = @(0);
//		//self.zoomOutButtonColor = @"#e5e5e5";
//		//self.zoomOutButtonImage = @"lens.png";
//		self.zoomOutButtonImageSize = @(17);
//		self.zoomOutButtonPadding = @(8);
//		//self.zoomOutButtonRollOverAlpha = @(1);
//		self.zoomOutText = @"Show all";
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	if (self.angle) {
		[dictRep setObject:self.angle forKey:@"angle"];
	}

	if (self.autoMarginOffset) {
		[dictRep setObject:self.autoMarginOffset forKey:@"autoMarginOffset"];
	}

    if (self.autoMargins) {
        [dictRep setObject:self.autoMargins forKey:@"autoMargins"];
    }

	if (self.chartCursor) {
		[dictRep setObject:[self.chartCursor dictionaryRepresentation] forKey:@"chartCursor"];
	}

	if (self.chartScrollbar) {
		[dictRep setObject:[self.chartScrollbar dictionaryRepresentation] forKey:@"chartScrollbar"];
	}

	if (self.depth3D) {
		[dictRep setObject:self.depth3D forKey:@"depth3D"];
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

    if (self.marginsUpdated) {
        [dictRep setObject:self.marginsUpdated forKey:@"marginsUpdated"];
    }

	if (self.marginTop) {
		[dictRep setObject:self.marginTop forKey:@"marginTop"];
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

	if (self.plotAreaGradientAngle) {
		[dictRep setObject:self.plotAreaGradientAngle forKey:@"plotAreaGradientAngle"];
	}

	if (self.trendLines) {
        NSMutableArray *tmpArr = [[NSMutableArray alloc] initWithCapacity:self.trendLines.count];
        for (AmTrendLine *trendLine in self.trendLines) {
            // only add appropriate class items
            if ([trendLine.class isSubclassOfClass:[AmTrendLine class]]) {
                [tmpArr addObject:[trendLine dictionaryRepresentation]];
            }
        }
		[dictRep setObject:tmpArr forKey:@"trendLines"];
	}

	if (self.zoomOutButtonAlpha) {
		[dictRep setObject:self.zoomOutButtonAlpha forKey:@"zoomOutButtonAlpha"];
	}

	if (self.zoomOutButtonColor) {
		[dictRep setObject:self.zoomOutButtonColor forKey:@"zoomOutButtonColor"];
	}

	if (self.zoomOutButtonImage) {
		[dictRep setObject:self.zoomOutButtonImage forKey:@"zoomOutButtonImage"];
	}

	if (self.zoomOutButtonImageSize) {
		[dictRep setObject:self.zoomOutButtonImageSize forKey:@"zoomOutButtonImageSize"];
	}

	if (self.zoomOutButtonPadding) {
		[dictRep setObject:self.zoomOutButtonPadding forKey:@"zoomOutButtonPadding"];
	}

	if (self.zoomOutButtonRollOverAlpha) {
		[dictRep setObject:self.zoomOutButtonRollOverAlpha forKey:@"zoomOutButtonRollOverAlpha"];
	}

	if (self.zoomOutText) {
		[dictRep setObject:self.zoomOutText forKey:@"zoomOutText"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];
    
	return [dictRep JSONString];
}

@end