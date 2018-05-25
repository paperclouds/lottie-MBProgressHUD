//
//  MBProgressHUD+Extend.m
//  lottie-MBProgressHUD
//
//  Created by paperclouds on 2018/5/25.
//  Copyright © 2018年 hechang. All rights reserved.
//

#import "MBProgressHUD+Extend.h"
#import <objc/runtime.h>
#import "UIViewExt.h"
#import "UIColor+Extend.h"

#define screenHeight [UIScreen mainScreen].bounds.size.height

@implementation MBProgressHUD (Extend)
@dynamic backView;
@dynamic animView;

- (UIView *)backView
{
    return objc_getAssociatedObject(self, @selector(backView));
}

-(void)setBackView:(UIView *)backView{
    objc_setAssociatedObject(self, @selector(backView), backView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (LOTAnimationView *)animView
{
    return objc_getAssociatedObject(self, @selector(animView));
}

-(void)setAnimView:(LOTAnimationView *)animView{
    objc_setAssociatedObject(self, @selector(animView), animView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setupViews {
    //    anim
    self.backView = [[UIView alloc]init];
    [self addSubview:self.backView];
    self.backView.backgroundColor = [UIColor whiteColor];
    self.backView.width = 100;
    self.backView.height = 100;
    self.backView.centerX = self.centerX;
    self.backView.centerY = screenHeight/2-64;
    self.backView.layer.cornerRadius = 10;
    self.backView.layer.borderWidth = 0.5;
    self.backView.layer.borderColor = [UIColor colorWithHexString:@"#eaeaea"].CGColor;
    self.backView.layer.shadowOpacity = 0.1;
    self.backView.layer.shadowOffset = CGSizeMake(0, 1);
    self.backView.layer.shadowRadius = 5;
    
    self.animView = [LOTAnimationView animationNamed:@"jiazai"];
    self.animView.width = 60;
    self.animView.height = 60;
    self.animView.centerX = self.backView.centerX;
    self.animView.centerY = self.backView.centerY;
    self.animView.loopAnimation = YES;
    self.animView.contentMode = UIViewContentModeScaleAspectFill;
    self.animView.animationSpeed = 1.5;
    
    [self addSubview:self.animView];
    [self.animView play];
}

- (void)updateIndicators {
    
}

@end
