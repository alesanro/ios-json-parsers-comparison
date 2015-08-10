//
//  JPPerson.m
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import "JPPlainPerson.h"
#import <RestKit.h>

@implementation JPPlainPerson

+ (EKObjectMapping *)objectMapping
{
    return [EKObjectMapping mappingForClass:self withBlock:^(EKObjectMapping *mapping) {
        [mapping mapPropertiesFromArray:@[@"title1",
                                          @"title2",
                                          @"title3",
                                          @"title4",
                                          @"title5",
                                          @"title6"]];
        [mapping hasOne:[JPPlainPerson class] forKeyPath:@"owner"];
        [mapping hasMany:[JPPlainPerson class] forKeyPath:@"friends"];
    }];
}

+ (RKObjectMapping *)rk_objectMapping
{
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:self];
    [mapping addAttributeMappingsFromArray:@[@"title1",
                                            @"title2",
                                            @"title3",
                                            @"title4",
                                            @"title5",
                                            @"title6"]];
    [mapping addRelationshipMappingWithSourceKeyPath:@"owner" mapping:mapping];
    [mapping addRelationshipMappingWithSourceKeyPath:@"friends" mapping:mapping];
    return mapping;
}

@end
