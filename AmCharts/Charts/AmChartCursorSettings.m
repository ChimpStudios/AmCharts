// 
//  AmChartCursorSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmChartCursorSettings.h"
#import "AmCategories.h"


@implementation AmChartCursorSettings

- (id)init {
	self = [super init];
	if (self) {
//		self.categoryBalloonDateFormats = [@[
//              @{@"period":@"YYYY", @"format":@"YYYY"},
//              @{@"period":@"MM", @"format":@"MMM, YYYY"},
//              @{@"period":@"WW", @"format":@"MMM DD, YYYY"},
//              @{@"period":@"DD", @"format":@"MMM DD, YYYY"},
//              @{@"period":@"hh", @"format":@"JJ:NN"},
//              @{@"period":@"mm", @"format":@"JJ:NN"},
//              @{@"period":@"ss", @"format":@"JJ:NN:SS"},
//              @{@"period":@"fff", @"format":@"JJ:NN:SS"}
//              ] mutableCopy];
//		self.enabled = true;
//		self.valueBalloonsEnabled = false;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

    if (self.bulletsEnabled) {
        [dictRep setObject:self.bulletsEnabled forKey:@"bulletsEnabled"];
    }

    if (self.balloonPointerOrientation) {
        [dictRep setObject:self.balloonPointerOrientation forKey:@"balloonPointerOrientation"];
    }
    
	if (self.bulletSize) {
		[dictRep setObject:self.bulletSize forKey:@"bulletSize"];
	}

	if (self.categoryBalloonAlpha) {
		[dictRep setObject:self.categoryBalloonAlpha forKey:@"categoryBalloonAlpha"];
	}

	if (self.categoryBalloonColor) {
		[dictRep setObject:self.categoryBalloonColor forKey:@"categoryBalloonColor"];
	}

	if (self.categoryBalloonDateFormats) {
		[dictRep setObject:self.categoryBalloonDateFormats forKey:@"categoryBalloonDateFormats"];
	}

    if (self.categoryBalloonEnabled) {
        [dictRep setObject:self.categoryBalloonEnabled forKey:@"categoryBalloonEnabled"];
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

    if (self.enabled) {
        [dictRep setObject:self.enabled forKey:@"enabled"];
    }

    if (self.graphBulletSize) {
        [dictRep setObject:self.graphBulletSize forKey:@"graphBulletSize"];
    }
    
    if (self.fullWidth) {
        [dictRep setObject:self.fullWidth forKey:@"fullWidth"];
    }
    
    if (self.pan) {
        [dictRep setObject:self.pan forKey:@"pan"];
    }

    if (self.valueBalloonsEnabled) {
        [dictRep setObject:self.valueBalloonsEnabled forKey:@"valueBalloonsEnabled"];
    }

    if (self.valueLineAlpha) {
        [dictRep setObject:self.valueLineAlpha forKey:@"valueLineAlpha"];
    }
    
    if (self.valueLineBalloonEnabled) {
       [dictRep setObject:self.valueLineBalloonEnabled forKey:@"valueLineBalloonEnabled"];
    }
    
    if (self.valueLineEnabled) {
        [dictRep setObject:self.valueLineEnabled forKey:@"valueLineEnabled"];
    }
    
    if (self.zoomable) {
        [dictRep setObject:self.zoomable forKey:@"zoomable"];
    }

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"chartCursorSettings\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end