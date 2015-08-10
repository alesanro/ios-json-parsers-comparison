//
//  JPRestKitMapping.h
//  json-parse-test
//
//  Created by Alex Rudyak on 8/10/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RKObjectMapping;

@protocol JPRestKitMapping <NSObject>

+ (RKObjectMapping *)rk_objectMapping;

@end
