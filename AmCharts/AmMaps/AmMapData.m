// 
//  AmMapData.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmMapData.h"
#import "AmCategories.h"
#import "AmMapArea.h"

@implementation AmMapData

- (id)init {
	self = [super init];
	if (self) {
//		self.bottomLatitude = @(-90);
//		self.getAreasFromMap = false;
//		self.leftLongitude = @(-180);
//		self.projection = @"mercator";
//		self.rightLongitude = @(180);
//		self.topLatitude = @(90);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	if (self.areas) {
        NSMutableArray *tmpArr = [[NSMutableArray alloc] initWithCapacity:self.areas.count];
        for (AmMapArea *mapArea in self.areas) {
            // only add appropriate class items
            if ([mapArea.class isSubclassOfClass:[AmMapArea class]]) {
                [tmpArr addObject:[mapArea dictionaryRepresentation]];
            }
        }
		[dictRep setObject:tmpArr forKey:@"areas"];
	}

	if (self.bottomLatitude) {
		[dictRep setObject:self.bottomLatitude forKey:@"bottomLatitude"];
	}

	[dictRep setObject:@(self.getAreasFromMap) forKey:@"getAreasFromMap"];

	if (self.leftLongitude) {
		[dictRep setObject:self.leftLongitude forKey:@"leftLongitude"];
	}

	if (self.map) {
		[dictRep setObject:self.map forKey:@"map"];
	}

	if (self.mapURL) {
		[dictRep setObject:self.mapURL forKey:@"mapURL"];
	}

	if (self.mapVar) {
		[dictRep setObject:self.mapVar forKey:@"mapVar"];
	}

	if (self.projection) {
		[dictRep setObject:self.projection forKey:@"projection"];
	}

	if (self.rightLongitude) {
		[dictRep setObject:self.rightLongitude forKey:@"rightLongitude"];
	}

	if (self.topLatitude) {
		[dictRep setObject:self.topLatitude forKey:@"topLatitude"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"mapData\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end