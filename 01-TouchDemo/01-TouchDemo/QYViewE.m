//
//  QYViewE.m
//  01-TouchDemo
//
//  Created by qingyun on 16/4/25.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "QYViewE.h"

@implementation QYViewE

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



-(void)singleTap{
    NSLog(@"=======%s",__func__);
}

-(void)doubleTap{

    NSLog(@"=========%s",__func__);
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //NSLog(@"========%s",__func__);
    //获取手指对象
    UITouch *touch=[touches anyObject];
    //2.获取一个点
    CGPoint point=[touch locationInView:self];
   // NSLog(@"======tapcount====%@",NSStringFromCGPoint(point));
    //点击次数
    NSInteger tapcount=touch.tapCount;
 
    if (tapcount==1) {
        //调用单击手势
        //[self singleTap];
        [self performSelector:@selector(singleTap) withObject:nil afterDelay:.5];

    }else if(tapcount==2){
        
        //取消单击手势
        [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(singleTap) object:nil];
        
       //调用双击手势
        [self doubleTap];
    }
    
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   // NSLog(@"========%s",__func__);

}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   // NSLog(@"========%s",__func__);
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{


}



@end
