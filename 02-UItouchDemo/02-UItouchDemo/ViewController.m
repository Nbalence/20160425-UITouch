//
//  ViewController.m
//  02-UItouchDemo
//
//  Created by qingyun on 16/4/25.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import "QYTextField.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myBtn;
@property (weak, nonatomic) IBOutlet QYTextField *myTf;

@end

@implementation ViewController


//-(void)clickON{
//    NSLog(@"=====%s",__func__);
//    
//    [_myTf resignFirstResponder];
//}

- (void)viewDidLoad {
    [_myBtn addTarget:nil action:@selector(clickON) forControlEvents:UIControlEventTouchUpInside];
    //支持多点触摸需要打开
   // self.view.multipleTouchEnabled=YES;
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_myTf resignFirstResponder];
    
    //获取多个手指
    NSArray *arr=[touches allObjects];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
