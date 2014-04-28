//
//  NSString+JSONString.m
//  ChimpUtilities
//
//  Created by Andrew on 9/25/13.
//  Copyright (c) 2013 Chimp Studios. All rights reserved.
//

#import "NSString+JSONString.h"

@implementation NSString (JSONString)

- (NSString *)JSONString
{
    
    return self;
    // wrap string in quotes
    return [@"\"" stringByAppendingFormat:@"%@\"", self];
}

@end
