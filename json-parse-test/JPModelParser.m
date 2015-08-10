//
//  JPModelParser.m
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import "JPModelParser.h"
#import "NSObject+JSONLoader.h"
#import "JPModelWorkTask.h"
#import "JPModelPerson.h"

@implementation JPModelParser

+ (id)parseTaskFromFile:(NSString *)filename
{
    NSDictionary *json = [NSObject jsonDictionaryWithFilename:filename];

    NSError *parseError = nil;
    id task = [MTLJSONAdapter modelOfClass:[JPModelWorkTask class] fromJSONDictionary:json error:&parseError];

    return task;
}

@end
