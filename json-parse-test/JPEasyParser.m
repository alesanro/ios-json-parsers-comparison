//
//  JPEasyParser.m
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import "JPEasyParser.h"
#import <EasyMapping.h>
#import "NSObject+JSONLoader.h"
#import "JPPlainWorkTask.h"

@implementation JPEasyParser

+ (id)parseTaskFromFile:(NSString *)filename
{
    NSDictionary *json = [NSObject jsonDictionaryWithFilename:filename];

    id task = [EKMapper objectFromExternalRepresentation:json withMapping:[JPPlainWorkTask objectMapping]];
    return task;
}

@end
