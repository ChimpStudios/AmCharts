// 
//  AmStockEvent.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmStockEvent.h"
#import "AmCategories.h"
#import "AmStockGraph.h"


@implementation AmStockEvent

- (id)init {
	self = [super init];
	if (self) {
//		self.backgroundAlpha = @(1);
//		self.backgroundColor = @"#DADADA";
//		self.borderAlpha = @(1);
//		self.borderColor = @"#888888";
//		self.color = @"#000000";
//		self.rollOverColor = @"#CC0000";
//		self.showOnAxis = false;
//		self.type = @"sign";
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

	if (self.borderAlpha) {
		[dictRep setObject:self.borderAlpha forKey:@"borderAlpha"];
	}

	if (self.borderColor) {
		[dictRep setObject:self.borderColor forKey:@"borderColor"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

	if (self.date) {
		[dictRep setObject:self.date forKey:@"date"];
	}

	if (self.amDescription) {
		[dictRep setObject:self.amDescription forKey:@"description"];
	}
    
    if (self.fontSize) {
        [dictRep setObject:self.fontSize forKey:@"fontSize"];
    }

	if (self.graph) {
		[dictRep setObject:self.graph forKey:@"graph"];
	}

	if (self.rollOverColor) {
		[dictRep setObject:self.rollOverColor forKey:@"rollOverColor"];
	}
    
    if (self.showAt) {
		[dictRep setObject:self.showAt forKey:@"showAt"];
	}

    if (self.showBullet) {
        [dictRep setObject:self.showBullet forKey:@"showBullet"];
    }
    
    if (self.showOnAxis) {
        [dictRep setObject:self.showOnAxis forKey:@"showOnAxis"];
    }

	if (self.text) {
		[dictRep setObject:self.text forKey:@"text"];
	}

	if (self.type) {
		[dictRep setObject:self.type forKey:@"type"];
	}

	if (self.url) {
		[dictRep setObject:self.url forKey:@"url"];
	}

	if (self.urlTarget) {
		[dictRep setObject:self.urlTarget forKey:@"urlTarget"];
	}
    
    if (self.value) {
		[dictRep setObject:self.value forKey:@"value"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"stockEvent\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end