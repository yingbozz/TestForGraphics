//
//  ChangeValueViewController.m
//  Demo_Graphics
//
//  Created by 薛迎波 on 15/12/15.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "ChangeValueViewController.h"
#import "downLoadValue.h"

@interface ChangeValueViewController ()
@property (weak, nonatomic) IBOutlet downLoadValue *downLoadView;


@end

@implementation ChangeValueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _downLoadView.personalValue = 0.9;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
