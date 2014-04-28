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
    NSString *validJson = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSError *regexErr = nil;
    NSRegularExpression *regex = [[NSRegularExpression alloc] initWithPattern:@"\"(\\w+)\"\\s*:" options:NSRegularExpressionCaseInsensitive error:&regexErr];
    if (regexErr) {
        NSLog(@"%@", regexErr.localizedDescription);
    }
   // NSArray *matches = [regex matchesInString:validJson options:0 range:NSMakeRange(0, validJson.length)];
   // NSLog(@"%li", matches.count);
    NSString *unquotedKeyJson = [regex stringByReplacingMatchesInString:validJson options:0 range:NSMakeRange(0, validJson.length) withTemplate:@"$1:"];
    
    return unquotedKeyJson;
}

@end
