//
//  NSObject+JSONLoader.h
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (JSONLoader)

+ (NSArray *)jsonArrayWithFilename:(NSString *)filename;

+ (NSDictionary *)jsonDictionaryWithFilename:(NSString *)filename;

@end
