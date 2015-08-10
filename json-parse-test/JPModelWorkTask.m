//
//  JPModelWorkTask.m
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import "JPModelWorkTask.h"
#import "JPModelPerson.h"

@implementation JPModelWorkTask

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"title": @"title",
             @"people": @"people"
             };
}

+ (NSValueTransformer *)peopleJSONTransformer
{
    return [MTLJSONAdapter arrayTransformerWithModelClass:[JPModelPerson class]];
}

@end
