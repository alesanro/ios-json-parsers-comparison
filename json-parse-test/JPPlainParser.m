//
//  JPPlainParser.m
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import "JPPlainParser.h"
#import "NSObject+JSONLoader.h"
#import <MJExtension.h>
#import "JPPlainWorkTask.h"
#import "JPPlainPerson.h"

@implementation JPPlainParser

+ (id)parseTaskFromFile:(NSString *)filename
{
    [JPPlainWorkTask setupObjectClassInArray:^NSDictionary *{
        return @{ @"people": NSStringFromClass([JPPlainPerson class]) };
    }];
    [JPPlainPerson setupObjectClassInArray:^NSDictionary *{
        return @{
                 @"friends": NSStringFromClass([JPPlainPerson class])
                 };
    }];
    
    NSDictionary *json = [NSObject jsonDictionaryWithFilename:filename];

    id task = [JPPlainWorkTask objectWithKeyValues:json];

    return task;
}

@end
