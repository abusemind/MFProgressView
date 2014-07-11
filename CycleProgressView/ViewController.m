//
//  ViewController.m
//  CycleProgressView
//
//  Created by Michael Fei on 7/10/14.
//  Copyright (c) 2014 Morgan Stanley. All rights reserved.
//

#import "ViewController.h"

#import "MSCycleProgressView/MSCycleProgressView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet MSCycleProgressView *progressView;

@end

@implementation ViewController

- (void) viewDidAppear:(BOOL)animated
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.progressView.tintColor = [UIColor redColor];
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.progressView.progress = 0.5;
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.progressView.progress = 0.7;
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.progressView.progress = 1.0;
    });
}

@end
