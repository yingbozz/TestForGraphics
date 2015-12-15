//
//  MyKit.m
//  Demo_Graphics
//
//  Created by 薛迎波 on 15/12/15.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "MyKit.h"

@implementation MyKit

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


//方法的执行时机：只在创建视图实例时，由系统自动调用一次
//注意：该方法千万不能自己手动调用


//drawRect方法只有在创建视图实例时，由系统创建一次（即不可以手动调用）
/*
 本demo是基于UIKit的基础上重绘
 
 */
-(void)drawRect:(CGRect)rect{
    //创建UIBezierPath的实例对象
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    //绘制路径
    
    //绘制三角形
    [path moveToPoint:CGPointMake(30, 30)];
    [path addLineToPoint:CGPointMake(30, 130)];
    [path addLineToPoint:CGPointMake(130, 30)];
    [path addLineToPoint:CGPointMake(30, 30)];
    
    //绘制圆弧
    [path moveToPoint:CGPointMake(180, 180)];
    [path addArcWithCenter:CGPointMake(180, 180) radius:100 startAngle:M_1_PI endAngle:0 clockwise:YES];
    
    
    
    //设置相关属性
    path.lineWidth = 5;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinBevel;
    
    //设置描边填充颜色
    [[UIColor purpleColor] setStroke];
    [[UIColor greenColor] setFill];
    
    //绘制
    [path stroke];
    [path fill];
    
    
    //绘制曲线(二次贝塞尔曲线)
    UIBezierPath *pathCurve = [UIBezierPath bezierPath];
    
    [pathCurve moveToPoint:CGPointMake(200, 300)];
    [pathCurve addQuadCurveToPoint:CGPointMake(300, 300) controlPoint:CGPointMake(200, 200)];
    [[UIColor blackColor] setStroke];
    [pathCurve stroke];
    
    //绘制曲线(三次贝塞尔曲线)
    UIBezierPath *pathCurve2 = [UIBezierPath bezierPath];
    [pathCurve2 moveToPoint:CGPointMake(20, 50)];
    
    [pathCurve2 addCurveToPoint:CGPointMake(200, 50) controlPoint1:CGPointMake(110, 0) controlPoint2:CGPointMake(110, 100)];
    
    [[UIColor blackColor] setStroke];
    [pathCurve2 stroke];
    
    
    //绘制圆角矩形
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(30, 400, 300, 150) cornerRadius:30];
    [[UIColor purpleColor] setStroke];
    roundedRect.lineWidth = 10;
    [roundedRect stroke];
    
    //绘制椭圆
    UIBezierPath *ovalInRect = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(30, 400, 300, 150)];
    [[UIColor greenColor] setStroke];
    ovalInRect.lineWidth = 5;
    [ovalInRect stroke];
    

   
}

@end
