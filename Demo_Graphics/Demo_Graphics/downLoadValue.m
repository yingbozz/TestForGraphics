//
//  downLoadValue.m
//  Demo_Graphics
//
//  Created by 薛迎波 on 15/12/15.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "downLoadValue.h"

@implementation downLoadValue

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)setPersonalValue:(CGFloat)personalValue{
    _personalValue = personalValue;
    [self setNeedsDisplay];
}


- (void)drawRect:(CGRect)rect{
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path addArcWithCenter:CGPointMake(self.frame.size.width/2, self.frame.size.height/2) radius:80 startAngle:M_PI_2 * 3 endAngle:M_PI_2*3+2*M_PI clockwise:YES];
    path.lineWidth = 5;
    [[UIColor redColor] setStroke];
    
    [path stroke];
    
    UIBezierPath *pathCover = [UIBezierPath bezierPath];
    
    [pathCover addArcWithCenter:CGPointMake(self.frame.size.width/2, self.frame.size.height/2) radius:80 startAngle:M_PI_2 * 3 endAngle:M_PI_2*3+_personalValue*2*M_PI clockwise:YES];
    pathCover.lineWidth = 5;
    [[UIColor greenColor] setStroke];
    
    [pathCover stroke];
}

@end
