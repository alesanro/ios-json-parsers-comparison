//
//  JPModelPerson.h
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Mantle.h>

@interface JPModelPerson : MTLModel <MTLJSONSerializing>

@property (nonatomic, nullable) NSString *title1;
@property (nonatomic, nullable) NSString *title2;
@property (nonatomic, nullable) NSString *title3;
@property (nonatomic, nullable) NSString *title4;
@property (nonatomic, nullable) NSString *title5;
@property (nonatomic, nullable) NSString *title6;
@property (nonatomic, nullable) JPModelPerson *owner;
@property (nonatomic, nullable) NSArray *friends;

@end
