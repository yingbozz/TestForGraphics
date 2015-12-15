//
//  ViewForStringView.m
//  Demo_Graphics
//
//  Created by 薛迎波 on 15/12/15.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "ViewForStringView.h"

@implementation ViewForStringView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect{
    NSString *str = @"thissssssssssssssssssssssssssssssssssssssssssssssss";
    NSDictionary *attribute = @{NSForegroundColorAttributeName:[UIColor greenColor],NSFontAttributeName:[UIFont systemFontOfSize:18]
                    };
    CGRect rectOfStr = [str boundingRectWithSize:CGSizeMake(200, 999) options:NSStringDrawingUsesLineFragmentOrigin attributes:attribute context:nil];
    
    //drawAtPoint不会自动换，一条直线绘制下去
    [str drawAtPoint:CGPointMake(100, 100) withAttributes:attribute];
    //drawInRect在限定的最大宽度区域内绘制
    [str drawInRect:CGRectMake(100, 200, rectOfStr.size.width, rectOfStr.size.height) withAttributes:attribute];
}

@end
