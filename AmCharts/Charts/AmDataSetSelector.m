// 
//  AmDataSetSelector.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmDataSetSelector.h"
#import "AmCategories.h"


@implementation AmDataSetSelector

- (id)init {
	self = [super init];
	if (self) {
		self.comboBoxSelectText = @"Select...";
		self.compareText = @"Compare to:";
		self.listHeight = @(150);
		self.position = @"right, left, top, bottom";
		self.selectText = @"Select:";
		self.width = @(180);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.comboBoxSelectText) {
		[dictRep setObject:self.comboBoxSelectText forKey:@"comboBoxSelectText"];
	}

	if (self.compareText) {
		[dictRep setObject:self.compareText forKey:@"compareText"];
	}

	if (self.listHeight) {
		[dictRep setObject:self.listHeight forKey:@"listHeight"];
	}

	if (self.position) {
		[dictRep setObject:self.position forKey:@"position"];
	}

	if (self.selectText) {
		[dictRep setObject:self.selectText forKey:@"selectText"];
	}

	if (self.width) {
		[dictRep setObject:self.width forKey:@"width"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"dataSetSelector\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end