// 
//  AmGraph.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmGraph.h"
#import "AmCategories.h"
#import "AmValueAxis.h"
#import "AmGraph.h"


@implementation AmGraph

- (id)init {
	self = [super init];
	if (self) {
        
//		self.balloonText = @"[[value]]";
//		self.behindColumns = false;
//		self.bullet = @"none";
//		self.bulletAlpha = @(1);
//		self.bulletBorderAlpha = @(0);
//		self.bulletBorderThickness = @(2);
//		self.bulletOffset = @(0);
//		self.bulletSize = @(8);
//		self.clustered = true;
//		self.connect = true;
//		self.cornerRadiusTop = @(0);
//		self.cursorBulletAlpha = @(1);
//		self.dashLength = @(0);
//		//self.fillAlphas = @(0);
//		self.gradientOrientation = @"vertical";
//		self.hidden = false;
//		self.hideBulletsCount = @(0);
//		self.includeInMinMax = true;
//		self.labelPosition = @"top";
//		//self.lineAlpha = @(1);
//		//self.lineThickness = @(1);
//		self.maxBulletSize = @(50);
//		self.minBulletSize = @(0);
//		self.minDistance = @(1);
//		self.negativeBase = @(0);
//		self.negativeLineAlpha = @(1);
//		self.newStack = false;
//		self.noStepRisers = false;
//		self.periodSpan = @(1);
//		self.pointPosition = @"middle";
//		self.showAllValueLabels = false;
//		self.showBalloon = true;
//		self.showBalloonAt = @"close";
//		self.showBulletsAt  = @"close";
//		self.showHandOnHover = false;
//		self.stackable = true;
 //       self.switchable = true;
//		self.type = @"line";
//		self.visibleInLegend = true;
         
		self.xAxis = [[AmValueAxis alloc] init];
		self.yAxis = [[AmValueAxis alloc] init];
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.alphaField) {
		[dictRep setObject:self.alphaField forKey:@"alphaField"];
	}

    if (self.autoColor) {
        [dictRep setObject:self.autoColor forKey:@"autoColor"];
    }
    
	if (self.balloonColor) {
		[dictRep setObject:self.balloonColor forKey:@"balloonColor"];
	}

	if (self.balloonFunction) {
		[dictRep setObject:[self.balloonFunction dictionaryRepresentation] forKey:@"balloonFunction"];
	}

	if (self.balloonText) {
		[dictRep setObject:self.balloonText forKey:@"balloonText"];
	}

    if (self.behindColumns) {
       [dictRep setObject:self.behindColumns forKey:@"behindColumns"];
    }

	if (self.bullet) {
		[dictRep setObject:self.bullet forKey:@"bullet"];
	}

	if (self.bulletAlpha) {
		[dictRep setObject:self.bulletAlpha forKey:@"bulletAlpha"];
	}

	if (self.bulletAxis ) {
		[dictRep setObject:[self.bulletAxis  dictionaryRepresentation] forKey:@"bulletAxis "];
	}

	if (self.bulletBorderAlpha) {
		[dictRep setObject:self.bulletBorderAlpha forKey:@"bulletBorderAlpha"];
	}

	if (self.bulletBorderColor) {
		[dictRep setObject:self.bulletBorderColor forKey:@"bulletBorderColor"];
	}

	if (self.bulletBorderThickness) {
		[dictRep setObject:self.bulletBorderThickness forKey:@"bulletBorderThickness"];
	}

	if (self.bulletColor) {
		[dictRep setObject:self.bulletColor forKey:@"bulletColor"];
	}

	if (self.bulletField) {
		[dictRep setObject:self.bulletField forKey:@"bulletField"];
	}

	if (self.bulletOffset) {
		[dictRep setObject:self.bulletOffset forKey:@"bulletOffset"];
	}

	if (self.bulletSize) {
		[dictRep setObject:self.bulletSize forKey:@"bulletSize"];
	}

	if (self.bulletSizeField) {
		[dictRep setObject:self.bulletSizeField forKey:@"bulletSizeField"];
	}

	if (self.closeField) {
		[dictRep setObject:self.closeField forKey:@"closeField"];
	}

    if(self.clustered) {
        [dictRep setObject:self.clustered forKey:@"clustered"];
    }

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.colorField) {
		[dictRep setObject:self.colorField forKey:@"colorField"];
	}

	if (self.columnWidth) {
		[dictRep setObject:self.columnWidth forKey:@"columnWidth"];
	}

    if (self.connect) {
        [dictRep setObject:self.connect forKey:@"connect"];
    }

	if (self.cornerRadiusTop) {
		[dictRep setObject:self.cornerRadiusTop forKey:@"cornerRadiusTop"];
	}

	if (self.cursorBulletAlpha) {
		[dictRep setObject:self.cursorBulletAlpha forKey:@"cursorBulletAlpha"];
	}

	if (self.customBullet) {
		[dictRep setObject:self.customBullet forKey:@"customBullet"];
	}

	if (self.customBulletField) {
		[dictRep setObject:self.customBulletField forKey:@"customBulletField"];
	}

	if (self.customMarker) {
		[dictRep setObject:self.customMarker forKey:@"customMarker"];
	}

	if (self.dashLength) {
		[dictRep setObject:self.dashLength forKey:@"dashLength"];
	}

	if (self.dashLengthField) {
		[dictRep setObject:self.dashLengthField forKey:@"dashLengthField"];
	}

	if (self.descriptionField) {
		[dictRep setObject:self.descriptionField forKey:@"descriptionField"];
	}

	if (self.errorField) {
		[dictRep setObject:self.errorField forKey:@"errorField"];
	}

	if (self.fillAlphas) {
		[dictRep setObject:self.fillAlphas forKey:@"fillAlphas"];
	}

    if (self.fillToAxis) {
		[dictRep setObject:self.fillToAxis forKey:@"fillToAxis"];
	}
    
	if (self.fillColors) {
		[dictRep setObject:self.fillColors forKey:@"fillColors"];
	}

	if (self.fillColorsField) {
		[dictRep setObject:self.fillColorsField forKey:@"fillColorsField"];
	}

	if (self.fillToGraph) {
		[dictRep setObject:[self.fillToGraph dictionaryRepresentation] forKey:@"fillToGraph"];
	}

    if (self.fixedColumnWidth) {
        [dictRep setObject:self.fixedColumnWidth forKey:@"fixedColumnWidth"];
    }
    
	if (self.fontSize) {
		[dictRep setObject:self.fontSize forKey:@"fontSize"];
	}

    if (self.gapField) {
        [dictRep setObject:self.gapField forKey:@"gapField"];
    }
    
    if (self.gapPeriod) {
        [dictRep setObject:self.gapPeriod forKey:@"gapPeriod"];
    }
    
	if (self.gradientOrientation) {
		[dictRep setObject:self.gradientOrientation forKey:@"gradientOrientation"];
	}

    if (self.hidden) {
        [dictRep setObject:self.hidden forKey:@"hidden"];
    }

	if (self.hideBulletsCount) {
		[dictRep setObject:self.hideBulletsCount forKey:@"hideBulletsCount"];
	}

	if (self.highField) {
		[dictRep setObject:self.highField forKey:@"highField"];
	}

	if (self.uid) {
		[dictRep setObject:self.uid forKey:@"id"];
	}

    if (self.includeInMinMax) {
        [dictRep setObject:self.includeInMinMax forKey:@"includeInMinMax"];
    }

    if (self.labelAnchor) {
        [dictRep setObject:self.labelAnchor forKey:@"labelAnchor"];
    }
    
	if (self.labelColorField) {
		[dictRep setObject:self.labelColorField forKey:@"labelColorField"];
	}
    
    if (self.labelFunction) {
		[dictRep setObject:self.labelFunction forKey:@"labelFunction"];
	}
    
    if (self.labelOffset) {
        [dictRep setObject:self.labelOffset forKey:@"labelOffset"];
    }

	if (self.labelPosition) {
		[dictRep setObject:self.labelPosition forKey:@"labelPosition"];
	}
    
    if (self.labelRotation) {
        [dictRep setObject:self.labelRotation forKey:@"labelRotation"];
    }

	if (self.labelText) {
		[dictRep setObject:self.labelText forKey:@"labelText"];
	}

	if (self.legendAlpha) {
		[dictRep setObject:self.legendAlpha forKey:@"legendAlpha"];
	}

	if (self.legendColor) {
		[dictRep setObject:self.legendColor forKey:@"legendColor"];
	}

	if (self.legendPeriodValueText) {
		[dictRep setObject:self.legendPeriodValueText forKey:@"legendPeriodValueText"];
	}

	if (self.legendValueText) {
		[dictRep setObject:self.legendValueText forKey:@"legendValueText"];
	}

	if (self.lineAlpha) {
		[dictRep setObject:self.lineAlpha forKey:@"lineAlpha"];
	}

	if (self.lineColor) {
		[dictRep setObject:self.lineColor forKey:@"lineColor"];
	}

	if (self.lineColorField) {
		[dictRep setObject:self.lineColorField forKey:@"lineColorField"];
	}

	if (self.lineThickness) {
		[dictRep setObject:self.lineThickness forKey:@"lineThickness"];
	}

	if (self.lowField) {
		[dictRep setObject:self.lowField forKey:@"lowField"];
	}

	if (self.markerType) {
		[dictRep setObject:self.markerType forKey:@"markerType"];
	}

	if (self.maxBulletSize) {
		[dictRep setObject:self.maxBulletSize forKey:@"maxBulletSize"];
	}

	if (self.minBulletSize) {
		[dictRep setObject:self.minBulletSize forKey:@"minBulletSize"];
	}

	if (self.minDistance) {
		[dictRep setObject:self.minDistance forKey:@"minDistance"];
	}

	if (self.negativeBase) {
		[dictRep setObject:self.negativeBase forKey:@"negativeBase"];
	}

	if (self.negativeFillAlphas) {
		[dictRep setObject:self.negativeFillAlphas forKey:@"negativeFillAlphas"];
	}

	if (self.negativeFillColors) {
		[dictRep setObject:self.negativeFillColors forKey:@"negativeFillColors"];
	}

	if (self.negativeLineAlpha) {
		[dictRep setObject:self.negativeLineAlpha forKey:@"negativeLineAlpha"];
	}

	if (self.negativeLineColor) {
		[dictRep setObject:self.negativeLineColor forKey:@"negativeLineColor"];
	}

    if (self.amNewStack) {
        [dictRep setObject:self.amNewStack forKey:@"newStack"];
    }
	
    if (self.noStepRisers) {
        [dictRep setObject:self.noStepRisers forKey:@"noStepRisers"];
    }

	if (self.openField) {
		[dictRep setObject:self.openField forKey:@"openField"];
	}

	if (self.pattern) {
		[dictRep setObject:self.pattern forKey:@"pattern"];
	}

	if (self.patternField) {
		[dictRep setObject:self.patternField forKey:@"patternField"];
	}

	if (self.periodSpan) {
		[dictRep setObject:self.periodSpan forKey:@"periodSpan"];
	}

	if (self.pointPosition) {
		[dictRep setObject:self.pointPosition forKey:@"pointPosition"];
	}

	if (self.precision) {
		[dictRep setObject:self.precision forKey:@"precision"];
	}
    
    if (self.proCandlesticks) {
        [dictRep setObject:self.proCandlesticks forKey:@"proCandlesticks"];
    }

    if (self.showAllValueLabels) {
        [dictRep setObject:self.showAllValueLabels forKey:@"showAllValueLabels"];
    }
	
    if (self.showBalloon) {
        [dictRep setObject:self.showBalloon forKey:@"showBalloon"];
    }

	if (self.showBalloonAt) {
		[dictRep setObject:self.showBalloonAt forKey:@"showBalloonAt"];
	}

	if (self.showBulletsAt ) {
		[dictRep setObject:self.showBulletsAt  forKey:@"showBulletsAt"];
	}

    if (self.showHandOnHover) {
        [dictRep setObject:self.showHandOnHover forKey:@"showHandOnHover"];
    }
    
    if (self.showOnAxis) {
        [dictRep setObject:self.showOnAxis forKey:@"showOnAxis"];
    }
    
    if (self.stackable) {
        [dictRep setObject:self.stackable forKey:@"stackable"];
    }
    
    if (self.stepDirection) {
        [dictRep setObject:self.stepDirection forKey:@"stepDirection"];
    }
    
    if (self.switchable) {
        [dictRep setObject:self.switchable forKey:@"switchable"];
    }

	if (self.title) {
		[dictRep setObject:self.title forKey:@"title"];
	}
    
    if (self.topRadius) {
        [dictRep setObject:self.topRadius forKey:@"topRadius"];
    }

	if (self.type) {
		[dictRep setObject:self.type forKey:@"type"];
	}

	if (self.urlField) {
		[dictRep setObject:self.urlField forKey:@"urlField"];
	}

	if (self.urlTarget) {
		[dictRep setObject:self.urlTarget forKey:@"urlTarget"];
	}
    
    if (self.useNegativeColorIfDown) {
        [dictRep setObject:self.useNegativeColorIfDown forKey:@"useNegativeColorIfDown"];
    }

	if (self.valueAxis) {
		[dictRep setObject:self.valueAxis forKey:@"valueAxis"];
	}

	if (self.valueField) {
		[dictRep setObject:self.valueField forKey:@"valueField"];
	}

    if (self.visibleInLegend) {
        [dictRep setObject:self.visibleInLegend forKey:@"visibleInLegend"];
    }

	if (self.xAxis) {
		[dictRep setObject:[self.xAxis dictionaryRepresentation] forKey:@"xAxis"];
	}

	if (self.xField) {
		[dictRep setObject:self.xField forKey:@"xField"];
	}

	if (self.yAxis) {
		[dictRep setObject:[self.yAxis dictionaryRepresentation] forKey:@"yAxis"];
	}

	if (self.yField) {
		[dictRep setObject:self.yField forKey:@"yField"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"amGraph\": %@", [dictRep JSONString]];
    
    // remove double quotes from labelFunction
    NSError *regexErr = nil;
    NSString *pattern = @"\"labelFunction\":\"(.*?)\",";
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:&regexErr];
    if (regexErr) {
        NSLog(@"%@", regexErr.localizedDescription);
    }
    NSRange matchRange = [regex rangeOfFirstMatchInString:jsonRep options:(NSMatchingAnchored) range:NSMakeRange(0, jsonRep.length)];
    if (matchRange.location != NSNotFound) {
        NSString *replacement = [jsonRep substringWithRange:matchRange];
        replacement = [replacement stringByReplacingCharactersInRange:NSMakeRange(16, 1) withString:@""];
        replacement = [replacement stringByReplacingCharactersInRange:NSMakeRange(replacement.length-2, 1) withString:@""];
        jsonRep = [jsonRep stringByReplacingCharactersInRange:matchRange withString:replacement];
    }
    
	return jsonRep;
}

@end