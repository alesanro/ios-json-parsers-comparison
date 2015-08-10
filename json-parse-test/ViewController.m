//
//  ViewController.m
//  json-parse-test
//
//  Created by Alex Rudyak on 8/7/15.
//  Copyright (c) 2015 *instinctools. All rights reserved.
//

#import "ViewController.h"
#import "JPParserProtocol.h"
#import "JPModelParser.h"
#import "JPPlainParser.h"
#import "JPEasyParser.h"
#import "JPRestParser.h"

static NSString *const kTest1Filename = @"test1";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSArray *parsers = @[[JPEasyParser new], [JPPlainParser new], [JPModelParser new], [JPRestParser new]];
    NSMutableArray *results = [NSMutableArray array];
    dispatch_queue_t workQueue = dispatch_queue_create("com.instinctools.test-work", DISPATCH_QUEUE_SERIAL);
    dispatch_apply([parsers count], workQueue, ^(size_t idx) {
        id<JPParserProtocol> parser = parsers[idx];
        NSTimeInterval startDate = [NSDate timeIntervalSinceReferenceDate];
        id result = [[parser class] parseTaskFromFile:kTest1Filename];
        NSTimeInterval endDate = [NSDate timeIntervalSinceReferenceDate] - startDate;
        [results addObject:@(endDate)];
    });

    dispatch_async(workQueue, ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            [parsers enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                NSLog(@"%@::parse - %@", NSStringFromClass([obj class]), results[idx]);
            }];
        });
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
