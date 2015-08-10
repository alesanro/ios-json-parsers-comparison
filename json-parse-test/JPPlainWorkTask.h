//
//  JPPlainWorkTask.h
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyMapping.h>
#import "JPRestKitMapping.h"

@interface JPPlainWorkTask : NSObject <EKMappingProtocol, JPRestKitMapping>

@property (nonatomic, nonnull) NSString *title;

@property (nonatomic, nonnull) NSArray *people;

@end
