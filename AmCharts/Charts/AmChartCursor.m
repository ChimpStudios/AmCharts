// 
//  AmChartCursor.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmChartCursor.h"
#import "AmCategories.h"
#import "AmValueAxis.h"

@implementation AmChartCursor

- (id)init {
	self = [super init];
	if (self) {
//		self.adjustment = @(0);
//		self.animationDuration = @(0.3);
        self.avoidBalloonOverlapping = true;
//      self.balloonPointerOrientation = @"horizontal";
//		self.bulletsEnabled = false;
//		self.bulletSize = @(8);
//		self.categoryBalloonAlpha = @(1);
//		self.categoryBalloonDateFormat = @"MMM DD, YYYY";
		self.categoryBalloonEnabled = true;
		//self.color = @"#FFFFFF";
		//self.cursorAlpha = @(1);
		//self.cursorColor = @"#CC0000";
//		self.cursorPosition = @"middle";
		self.enabled = true;
//		self.fullWidth = false;
//		self.graphBulletSize = @(1.7);
//		self.oneBalloonOnly = false;
//		self.pan = false;
//		self.selectionAlpha = @(0.2);
//		self.selectWithoutZooming = false;
//		self.showNextAvailable = false;
		self.valueBalloonsEnabled = true;
		self.zoomable = true;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.adjustment) {
		[dictRep setObject:self.adjustment forKey:@"adjustment"];
	}

	if (self.animationDuration) {
		[dictRep setObject:self.animationDuration forKey:@"animationDuration"];
	}

    [dictRep setObject:@(self.avoidBalloonOverlapping) forKey:@"avoidBalloonOverlapping"];
    
    if (self.balloonPointerOrientation) {
        [dictRep setObject:self.balloonPointerOrientation forKey:@"balloonPointerOrientation"];
    }
    
	[dictRep setObject:@(self.bulletsEnabled) forKey:@"bulletsEnabled"];

	if (self.bulletSize) {
		[dictRep setObject:self.bulletSize forKey:@"bulletSize"];
	}

	if (self.categoryBalloonAlpha) {
		[dictRep setObject:self.categoryBalloonAlpha forKey:@"categoryBalloonAlpha"];
	}

	if (self.categoryBalloonColor) {
		[dictRep setObject:self.categoryBalloonColor forKey:@"categoryBalloonColor"];
	}

	if (self.categoryBalloonDateFormat) {
		[dictRep setObject:self.categoryBalloonDateFormat forKey:@"categoryBalloonDateFormat"];
	}

	[dictRep setObject:@(self.categoryBalloonEnabled) forKey:@"categoryBalloonEnabled"];

	if (self.categoryBalloonFunction) {
		[dictRep setObject:[self.categoryBalloonFunction dictionaryRepresentation] forKey:@"categoryBalloonFunction"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.cursorAlpha) {
		[dictRep setObject:self.cursorAlpha forKey:@"cursorAlpha"];
	}

	if (self.cursorColor) {
		[dictRep setObject:self.cursorColor forKey:@"cursorColor"];
	}

	if (self.cursorPosition) {
		[dictRep setObject:self.cursorPosition forKey:@"cursorPosition"];
	}

	[dictRep setObject:@(self.enabled) forKey:@"enabled"];

	[dictRep setObject:@(self.fullWidth) forKey:@"fullWidth"];

    if (self.graphBulletAlpha) {
		[dictRep setObject:self.graphBulletAlpha forKey:@"graphBulletAlpha"];
	}
    
	if (self.graphBulletSize) {
		[dictRep setObject:self.graphBulletSize forKey:@"graphBulletSize"];
	}

	[dictRep setObject:@(self.oneBalloonOnly) forKey:@"oneBalloonOnly"];

	[dictRep setObject:@(self.pan) forKey:@"pan"];

	if (self.selectionAlpha) {
		[dictRep setObject:self.selectionAlpha forKey:@"selectionAlpha"];
	}

	[dictRep setObject:@(self.selectWithoutZooming) forKey:@"selectWithoutZooming"];

	[dictRep setObject:@(self.showNextAvailable) forKey:@"showNextAvailable"];

	[dictRep setObject:@(self.valueBalloonsEnabled) forKey:@"valueBalloonsEnabled"];

    if (self.valueLineAlpha) {
        [dictRep setObject:self.valueLineAlpha forKey:@"valueLineAlpha"];
    }
    
    if (self.valueLineAxis) {
        [dictRep setObject:[self.valueLineAxis dictionaryRepresentation] forKey:@"valueLineAxis"];
    }
    
    [dictRep setObject:@(self.valueLineBalloonEnabled) forKey:@"valueLineBalloonEnabled"];
    
    [dictRep setObject:@(self.valueLineEnabled) forKey:@"valueLineEnabled"];
    
	[dictRep setObject:@(self.zoomable) forKey:@"zoomable"];

	[dictRep setObject:@(self.zooming) forKey:@"zooming"];

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"chartCursor\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end