// 
//  AmDataSet.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmDataSet.h"
#import "AmCategories.h"


@implementation AmDataSet

- (id)init {
	self = [super init];
	if (self) {
//		self.compared = false;
//		self.showInCompare = true;
//		self.showInSelect = true;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.categoryField) {
		[dictRep setObject:self.categoryField forKey:@"categoryField"];
	}

	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}

    if (self.compared) {
       [dictRep setObject:self.compared forKey:@"compared"];
    }
	
	if (self.dataProvider) {
		[dictRep setObject:self.dataProvider forKey:@"dataProvider"];
	}

	if (self.fieldMappings) {
		[dictRep setObject:self.fieldMappings forKey:@"fieldMappings"];
	}

    if (self.showInCompare) {
        [dictRep setObject:self.showInCompare forKey:@"showInCompare"];
    }
	
    if (self.showInSelect) {
        [dictRep setObject:self.showInSelect forKey:@"showInSelect"];
    }
	
	if (self.stockEvents) {
		[dictRep setObject:self.stockEvents forKey:@"stockEvents"];
	}

	if (self.title) {
		[dictRep setObject:self.title forKey:@"title"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"dataSet\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end