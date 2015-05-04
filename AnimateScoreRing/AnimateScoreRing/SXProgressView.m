//
//  SXProgressView.m
//  AnimateScoreRing
//
//  Created by dsx on 15/5/4.
//  Copyright (c) 2015年 dongshangxian. All rights reserved.
//

#import "SXProgressView.h"

@implementation SXProgressView

- (void)setProgress:(float)progress
{
    _progress = progress;
    
//    self.titleLabel.text = [NSString stringWithFormat:@"%.01f%%",self.progress * 100];
    
    [self setNeedsDisplay];
    
}

- (void)awakeFromNib
{
    self.lineWidth = 3.0;
    self.progress = 0.0;
    
    if (self.progress < 4.7) {
        CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(setNeedsDisplay)];
        [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    }
}

//- (void)layoutSubviews
//{
//    self.titleLabel.frame = CGRectMake(10, 10, 70, 30);
//}

- (void)drawRect:(CGRect)rect
{
    if (self.progress >= 0.7){
        self.progress = 0.7;
    }
    self.progress += 0.02;
    CGPoint point = CGPointMake(self.bounds.size.height * 0.5, self.bounds.size.width * 0.5);
    
    CGFloat r = MIN(self.bounds.size.height * 0.5, self.bounds.size.width * 0.5);
    
    r -= 5;
    
    CGFloat start = -M_PI_2;
    CGFloat end = self.progress * 2* M_PI +start;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:point radius:r startAngle:start endAngle:end clockwise:YES];
    path.lineWidth = self.lineWidth;
    path.lineCapStyle= kCGLineCapRound;
    
    [[UIColor whiteColor] setStroke];
    
    [path stroke];
    
    UIBezierPath *path2 = [UIBezierPath bezierPathWithArcCenter:point radius:r startAngle:end+0.05 endAngle:start-0.05 clockwise:YES];
    path.lineWidth = self.lineWidth;
    path.lineCapStyle= kCGLineCapRound;
    
    [[UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1] setStroke];
    
    [path2 stroke];
    
}

@end
