//
//  JPPlainWorkTask.m
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import "JPPlainWorkTask.h"
#import "JPPlainPerson.h"
#import <RestKit.h>

@implementation JPPlainWorkTask

+ (EKObjectMapping *)objectMapping
{
    return [EKObjectMapping mappingForClass:self withBlock:^(EKObjectMapping *mapping) {
        [mapping mapPropertiesFromArray:@[@"title"]];
        [mapping hasMany:[JPPlainPerson class] forKeyPath:@"people"];
    }];
}

+ (RKObjectMapping *)rk_objectMapping
{
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:self];
    [mapping addAttributeMappingsFromArray:@[@"title"]];
    [mapping addRelationshipMappingWithSourceKeyPath:@"people" mapping:[JPPlainPerson rk_objectMapping]];
    return mapping;
}

@end
