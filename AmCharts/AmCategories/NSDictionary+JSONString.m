//
//  NSDictionary+JSONString.m
//  ChimpUtilities
//
//  Created by Andrew on 9/25/13.
//  Copyright (c) 2013 Chimp Studios. All rights reserved.
//

#import "NSDictionary+JSONString.h"

@implementation NSDictionary (JSONString)

- (NSString *)JSONString
{
    NSError *serializeErr = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:self options:0 error:&serializeErr];
    
    if (serializeErr) {
        NSLog(@"%@", serializeErr.localizedDescription);
        return @"";
    }
    
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

@end
