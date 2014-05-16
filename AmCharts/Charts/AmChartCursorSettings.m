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
		self.enabled = true;
//		self.valueBalloonsEnabled = false;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

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

	if (self.categoryBalloonDateFormats) {
		[dictRep setObject:self.categoryBalloonDateFormats forKey:@"categoryBalloonDateFormats"];
	}

	[dictRep setObject:@(self.categoryBalloonEnabled) forKey:@"categoryBalloonEnabled"];

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
    
	[dictRep setObject:@(self.pan) forKey:@"pan"];

	[dictRep setObject:@(self.valueBalloonsEnabled) forKey:@"valueBalloonsEnabled"];

	[dictRep setObject:@(self.zoomable) forKey:@"zoomable"];

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"chartCursorSettings\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end