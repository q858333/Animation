//
//  ViewController.m
//  Line
//
//  Created by dengbin on 16/8/11.
//  Copyright © 2016年 dengbin. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    [self show];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)show
{
    // 创建path123123
    UIBezierPath *path = [UIBezierPath bezierPath];
    // 添加路径[1条点(100,100)到点(200,100)的线段]到path
//    [path moveToPoint:CGPointMake(100 , 100)];
//    [path addLineToPoint:CGPointMake(200, 100)];
    CAShapeLayer *trackLayer = [CAShapeLayer new];
    [path moveToPoint:CGPointMake(100, 100)];

    [path addLineToPoint:CGPointMake(200, 100)];

    [path addLineToPoint:CGPointMake(200, 200)];
    
//    
    [path addLineToPoint:CGPointMake(100, 200)];
//    
    [path addLineToPoint:CGPointMake(100, 100)];

    trackLayer.path = path.CGPath;

    trackLayer.frame = self.view.bounds;
    trackLayer.lineWidth=2;
    trackLayer.fillColor = nil;
    trackLayer.strokeColor = [UIColor blueColor].CGColor;
   // trackLayer.path = path.CGPath;

    [self.view.layer addSublayer:trackLayer];

    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:NSStringFromSelector(@selector(strokeEnd))];
    animation.fromValue = @0.0;
    animation.toValue = @1.0;
    animation.duration = 10;

    [trackLayer addAnimation:animation forKey:NSStringFromSelector(@selector(strokeEnd))];

    // 将path绘制出来
    //  [path stroke];
//   
//    CABasicAnimation *spinAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
//    spinAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
//    spinAnimation.fromValue = [NSNumber numberWithInt:0];
//    spinAnimation.toValue = [NSNumber numberWithFloat:2 * M_PI];
//    spinAnimation.duration = 2;
//    spinAnimation.repeatCount = HUGE_VALF;
//    
//    [trackLayer addAnimation:spinAnimation forKey:@"shapeRotateAnimation"];

    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
