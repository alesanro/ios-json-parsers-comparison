//
//  JPModelPerson.m
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import "JPModelPerson.h"

@implementation JPModelPerson

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"title1": @"title1",
             @"title2": @"title2",
             @"title3": @"title3",
             @"title4": @"title4",
             @"title5": @"title5",
             @"title6": @"title6",
             @"owner": @"owner",
             @"friends": @"friends"
             };
}

+ (NSValueTransformer *)ownerJSONTransformer
{
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:[JPModelPerson class]];
}

+ (NSValueTransformer *)friendsJSONTransformer
{
    return [MTLJSONAdapter arrayTransformerWithModelClass:[JPModelPerson class]];
}

@end
