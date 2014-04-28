// 
//  AmStockEventSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmStockEventSettings.h"
#import "AmCategories.h"


@implementation AmStockEventSettings

- (id)init {
	self = [super init];
	if (self) {
		self.backgroundAlpha = @(1);
		self.backgroundColor = @"#DADADA";
		self.balloonColor = @"#CC0000";
		self.borderAlpha = @(1);
		self.borderColor = @"#888888";
		self.rollOverColor = @"#CC0000";
		self.type = @"sign";
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.backgroundAlpha) {
		[dictRep setObject:self.backgroundAlpha forKey:@"backgroundAlpha"];
	}

	if (self.backgroundColor) {
		[dictRep setObject:self.backgroundColor forKey:@"backgroundColor"];
	}

	if (self.balloonColor) {
		[dictRep setObject:self.balloonColor forKey:@"balloonColor"];
	}

	if (self.borderAlpha) {
		[dictRep setObject:self.borderAlpha forKey:@"borderAlpha"];
	}

	if (self.borderColor) {
		[dictRep setObject:self.borderColor forKey:@"borderColor"];
	}

	if (self.rollOverColor) {
		[dictRep setObject:self.rollOverColor forKey:@"rollOverColor"];
	}

	if (self.type) {
		[dictRep setObject:self.type forKey:@"type"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"stockEventSettings\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end