//
//  JPRestParser.m
//  json-parse-test
//
//  Created by Alex Rudyak on 8/10/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import "JPRestParser.h"
#import <RestKit.h>
//#import <RKObjectMapping.h>
#import "NSObject+JSONLoader.h"
#import "JPPlainWorkTask.h"

@implementation JPRestParser

+ (id)parseTaskFromFile:(NSString *)filename
{
    NSDictionary *json = [NSObject jsonDictionaryWithFilename:filename];

    RKMapperOperation *mapper = [[RKMapperOperation alloc] initWithRepresentation:json mappingsDictionary:@{@"": [JPPlainWorkTask rk_objectMapping]}];

    NSError *parseError = nil;
    BOOL isSuccess = [mapper execute:&parseError];
    if (!isSuccess) {
        @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[parseError localizedDescription] userInfo:nil];
    }
    id task = [mapper.mappingResult firstObject];

    return task;
}

@end
