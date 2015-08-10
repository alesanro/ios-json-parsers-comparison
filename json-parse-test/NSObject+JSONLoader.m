//
//  NSObject+JSONLoader.m
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import "NSObject+JSONLoader.h"

@implementation NSObject (JSONLoader)

- (NSArray *)jsonArrayWithFilename:(NSString *)filename
{
    return nil;
}


- (NSDictionary *)jsonDictionaryWithFilename:(NSString *)filename
{
    NSString *path = [[NSBundle mainBundle] pathForResource:filename ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSError *parseError = nil;
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&parseError];
    if (parseError) {
        @throw [NSException exceptionWithName:@"JSONParseError" reason:@"Can't parse json from file" userInfo:@{@"Error": parseError}];
    }

    return dictionary;
}

@end
