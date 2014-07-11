// 
//  AmExport.h
//  AmCharts
// 
//  Created by Andrew on 7/10/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmExport.h"
#import "AmCategories.h"


@implementation AmExport

- (id)init {
	self = [super init];
	if (self) {
		self.exportPNG = true;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.bottom) {
		[dictRep setObject:self.bottom forKey:@"bottom"];
	}

	if (self.buttonAlpha) {
		[dictRep setObject:self.buttonAlpha forKey:@"buttonAlpha"];
	}

	if (self.buttonIcon) {
		[dictRep setObject:self.buttonIcon forKey:@"buttonIcon"];
	}

	if (self.buttonRollOverColor) {
		[dictRep setObject:self.buttonRollOverColor forKey:@"buttonRollOverColor"];
	}

	if (self.buttonTitle) {
		[dictRep setObject:self.buttonTitle forKey:@"buttonTitle"];
	}

	[dictRep setObject:@(self.exportJPG) forKey:@"exportJPG"];

	[dictRep setObject:@(self.exportPDF) forKey:@"exportPDF"];

	[dictRep setObject:@(self.exportPNG) forKey:@"exportPNG"];

	[dictRep setObject:@(self.exportSVG) forKey:@"exportSVG"];

	if (self.imageBackgroundColor) {
		[dictRep setObject:self.imageBackgroundColor forKey:@"imageBackgroundColor"];
	}

	if (self.imageFileName) {
		[dictRep setObject:self.imageFileName forKey:@"imageFileName"];
	}

	if (self.left) {
		[dictRep setObject:self.left forKey:@"left"];
	}

	if (self.right) {
		[dictRep setObject:self.right forKey:@"right"];
	}

	if (self.textRollOverColor) {
		[dictRep setObject:self.textRollOverColor forKey:@"textRollOverColor"];
	}

	if (self.top) {
		[dictRep setObject:self.top forKey:@"top"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"amExport\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end