//
//  AmResponsive.m
//  AmChartsLibrary
//
//  Created by Andrew on 2/6/15.
//  Copyright (c) 2015 Chimp Studios. All rights reserved.
//

#import "AmResponsive.h"
#import "AmCategories.h"

@implementation AmResponsive

- (id)init {
    self = [super init];
    if (self) {
  //      self.enabled = true;
    }
    return self;
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *dictRep = [[NSMutableDictionary alloc] init];
    
    if (self.enabled) {
        [dictRep setObject:self.enabled forKey:@"enabled"];
    }
    
    return dictRep;
}

- (NSString *)javascriptRepresentation {
    NSDictionary *dictRep = [self dictionaryRepresentation];
    
    NSString *jsonRep = [NSString stringWithFormat:@"\"responsive\": %@", [dictRep JSONString]];
    return jsonRep;
}

@end
