//
//  MBProgressHUD+Extend.h
//  lottie-MBProgressHUD
//
//  Created by paperclouds on 2018/5/25.
//  Copyright © 2018年 hechang. All rights reserved.
//

#import "MBProgressHUD.h"
#import <Lottie/Lottie.h>

@interface MBProgressHUD (Extend)

@property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) LOTAnimationView *animView;

@end
