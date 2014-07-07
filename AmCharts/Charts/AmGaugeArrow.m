//
//  AmGaugeArrow.h
//  AmCharts
//
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
//

#import "AmGaugeArrow.h"
#import "AmCategories.h"
#import "AmGaugeAxis.h"


@implementation AmGaugeArrow

- (id)init {
	self = [super init];
	if (self) {
        //		self.alpha = @(1);
		self.axis = [[AmGaugeAxis alloc] init];
        //		self.borderAlpha = @(1);
        //		self.clockWiseOnly = false;
        //		self.color = @"#000000";
        //		self.innerRadius = @"0";
        //		self.nailAlpha = @(1);
        //		self.nailBorderAlpha = @(0);
        //		self.nailBorderThickness = @(1);
        //		self.nailRadius = @(8);
        //		self.radius = @"90%";
        //		self.startWidth = @(8);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];
    
	if (self.alpha) {
		[dictRep setObject:self.alpha forKey:@"alpha"];
	}
    
	if (self.axis) {
		[dictRep setObject:[self.axis javascriptRepresentation] forKey:@"axis"];
	}
    
	if (self.borderAlpha) {
		[dictRep setObject:self.borderAlpha forKey:@"borderAlpha"];
	}
    
	[dictRep setObject:@(self.clockWiseOnly) forKey:@"clockWiseOnly"];
    
	if (self.color) {
		[dictRep setObject:self.color forKey:@"color"];
	}
    
    if (self.uid) {
		[dictRep setObject:self.uid forKey:@"id"];
	}
    
	if (self.innerRadius) {
		[dictRep setObject:self.innerRadius forKey:@"innerRadius"];
	}
    
	if (self.nailAlpha) {
		[dictRep setObject:self.nailAlpha forKey:@"nailAlpha"];
	}
    
	if (self.nailBorderAlpha) {
		[dictRep setObject:self.nailBorderAlpha forKey:@"nailBorderAlpha"];
	}
    
	if (self.nailBorderThickness) {
		[dictRep setObject:self.nailBorderThickness forKey:@"nailBorderThickness"];
	}
    
	if (self.nailRadius) {
		[dictRep setObject:self.nailRadius forKey:@"nailRadius"];
	}
    
	if (self.radius) {
		[dictRep setObject:self.radius forKey:@"radius"];
	}
    
	if (self.startWidth) {
		[dictRep setObject:self.startWidth forKey:@"startWidth"];
	}
    
    if (self.value) {
		[dictRep setObject:self.value forKey:@"value"];
	}
    
	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];
    
	NSString *jsonRep = [NSString stringWithFormat:@"\"gaugeArrow\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end