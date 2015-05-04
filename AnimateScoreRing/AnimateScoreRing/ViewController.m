//
//  ViewController.m
//  AnimateScoreRing
//
//  Created by dsx on 15/5/4.
//  Copyright (c) 2015年 dongshangxian. All rights reserved.
//

#import "ViewController.h"
#import "SXProgressView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet SXProgressView *progressView;

@property(assign,nonatomic) CGFloat p;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    CGFloat score = 4.7;
//    
//    CGFloat progress = score - 4;
//    
//    self.p =0;
//    for (int i=0; i<20; i++) {
//        
//        self.p += 0.03;
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            self.progressView.progress = self.p;
//        });
//        
//    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
