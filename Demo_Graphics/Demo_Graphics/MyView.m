//
//  MyView.m
//  Demo_Graphics
//
//  Created by 薛迎波 on 15/12/15.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "MyView.h"

@implementation MyView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

/*
 本demo利用Core Graphics作图，重写view的drawRect方法
 */

-(void)drawRect:(CGRect)rect{
    //获取绘图的上下文对象
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //勾勒图形内容
    CGContextMoveToPoint(context, 50, 50);
    CGContextAddLineToPoint(context, 250, 50);
    CGContextAddLineToPoint(context, 250, 250);
    CGContextAddLineToPoint(context, 50, 50);
    
    //设置描边的颜色
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetStrokeColorWithColor(context, [UIColor purpleColor].CGColor);
    
    //绘制图像
    //CGContextStrokePath(context);
    //CGContextFillPath(context);
    CGContextDrawPath(context, kCGPathFillStroke);
  
}

@end
