//
//  JPModelWorkTask.h
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Mantle.h>

@interface JPModelWorkTask : MTLModel <MTLJSONSerializing>

@property (nonatomic, nonnull) NSString *title;

@property (nonatomic, nonnull) NSArray *people;

@end
