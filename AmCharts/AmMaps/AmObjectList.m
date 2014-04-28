// 
//  AmObjectList.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmObjectList.h"
#import "AmCategories.h"


@implementation AmObjectList

- (id)init {
	self = [super init];
	if (self) {
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];

	if (self.container) {
		[dictRep setObject:self.container forKey:@"container"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"objectList\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end