//
//  ViewController.m
//  qweqweqwe
//
//  Created by mac02 on 2020/11/24.
//

#import "ViewController.h"
//#import "WXApiRequestHandler.h"
//#import "WXApiManager.h"
#import "WechatAuthSDK.h"
#import "MXWechatPayHandler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [MXWechatPayHandler jumpToWxPay];
    
}

@end
