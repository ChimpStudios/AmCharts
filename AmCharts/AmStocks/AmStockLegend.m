// 
//  AmStockLegend.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmStockLegend.h"
#import "AmCategories.h"


@implementation AmStockLegend

- (id)init {
	self = [super init];
	if (self) {
//		self.valueTextComparing = @"[[percents.value]]%";
//		self.valueTextRegular = @"[[value]]";
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	if (self.periodValueTextComparing) {
		[dictRep setObject:self.periodValueTextComparing forKey:@"periodValueTextComparing"];
	}

	if (self.periodValueTextRegular) {
		[dictRep setObject:self.periodValueTextRegular forKey:@"periodValueTextRegular"];
	}

	if (self.valueTextComparing) {
		[dictRep setObject:self.valueTextComparing forKey:@"valueTextComparing"];
	}

	if (self.valueTextRegular) {
		[dictRep setObject:self.valueTextRegular forKey:@"valueTextRegular"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"stockLegend\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end