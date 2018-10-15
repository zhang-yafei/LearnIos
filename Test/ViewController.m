//
//  ViewController.m
//  Test
//
//  Created by 张亚飞 on 2018/10/10.
//  Copyright © 2018年 张亚飞. All rights reserved.
//

#import "ViewController.h"
#import "UpdateViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myTxt;
@property (weak, nonatomic) IBOutlet UIButton *loginBn2;

- (IBAction)loginBn:(id)sender;
- (IBAction)clickHandle:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //注意，现在0-100的tag被苹果保留使用，使用会报错
    UILabel *myLb = (UILabel *)[self.view viewWithTag:120];
    //设置tag关联的label内容
    [myLb setText:@"iOS开发！"];
    [self.myTxt setText:@"欢迎学习"];
    
    [self.loginBn2 addTarget:self action:@selector(loginHandler:) forControlEvents:(UIControlEventTouchUpInside)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)loginBn:(id)sender {
    [self.myTxt setText:@"IBAction事件"];
    
}

- (IBAction)clickHandle:(id)sender {
    UpdateViewController *update = [[UpdateViewController alloc]init];
    //进入的动画效果
    //CoverVertical  //垂直覆盖
    //FlipHorizontal  //水平翻转
    //CrossDissolve  //交叉变换
    //PartialCurl  //翻起
    update.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    update.modalPresentationStyle = UIModalPresentationFullScreen;
    
    [self presentViewController:update animated:true completion:^{
    }];
}

- (void)loginHandler:(UIButton *)sender{
    [self.myTxt setText:@"代码绑定的事件"];
}
@end
