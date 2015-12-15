//
//  ViewForImageView.m
//  Demo_Graphics
//
//  Created by 薛迎波 on 15/12/15.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "ViewForImageView.h"

@implementation ViewForImageView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

/*
 该绘制方法在View中重写drawRect方法
 */

-(void)drawRect:(CGRect)rect{
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 50, 100, 100) cornerRadius:30];
    [path addClip];
    
    UIImage *image = [UIImage imageNamed:@"cm2_daily_banner2.jpg"];
    //[image drawAtPoint:CGPointMake(50, 50)];
    [image drawInRect:CGRectMake(50, 50, 100, 100)];
}

@end
