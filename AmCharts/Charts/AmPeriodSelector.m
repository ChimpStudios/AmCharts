// 
//  AmPeriodSelector.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmPeriodSelector.h"
#import "AmCategories.h"


@implementation AmPeriodSelector

- (id)init {
	self = [super init];
	if (self) {
//		self.dateFormat = @"DD-MM-YYYY";
//		self.fromText = @"From:";
//		self.hideOutOfScopePeriods = true;
//		self.inputFieldsEnabled = true;
//		self.inputFieldWidth = @(100);
//		self.periodsText = @"Zoom:";
//		self.position = @"bottom";
//		self.selectFromStart = false;
//		self.toText = @"To:";
//		self.width = @(180);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.dateFormat) {
		[dictRep setObject:self.dateFormat forKey:@"dateFormat"];
	}

	if (self.fromText) {
		[dictRep setObject:self.fromText forKey:@"fromText"];
	}

    if (self.hideOutOfScopePeriods) {
        [dictRep setObject:self.hideOutOfScopePeriods forKey:@"hideOutOfScopePeriods"];
    }
	
    if (self.inputFieldsEnabled) {
        [dictRep setObject:self.inputFieldsEnabled forKey:@"inputFieldsEnabled"];
    }

	if (self.inputFieldWidth) {
		[dictRep setObject:self.inputFieldWidth forKey:@"inputFieldWidth"];
	}

	if (self.periods) {
		[dictRep setObject:self.periods forKey:@"periods"];
	}

	if (self.periodsText) {
		[dictRep setObject:self.periodsText forKey:@"periodsText"];
	}

	if (self.position) {
		[dictRep setObject:self.position forKey:@"position"];
	}

    if (self.selectFromStart) {
        [dictRep setObject:self.selectFromStart forKey:@"selectFromStart"];
    }

	if (self.toText) {
		[dictRep setObject:self.toText forKey:@"toText"];
	}

	if (self.width) {
		[dictRep setObject:self.width forKey:@"width"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"periodSelector\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end