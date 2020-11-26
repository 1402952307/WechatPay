//
//  AppDelegate.m
//  qweqweqwe
//
//  Created by mac02 on 2020/11/24.
//

#import "AppDelegate.h"
#import "WXApiManager.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    

    
    NSString *appKey = @"wx2a9f5ef9baf2760f";
//    NSString *appSecret = @"5d38c7079676463149ffea593c58f2ed";
//    NSString *universalLink = @"https://www.dvema.com/well-known/app/apple-app-site-association/";
//    // 微信开发者-微信注册
////    [WXApi registerApp:appKey universalLink:universalLink];
//
//    //向微信注册,发起支付必须注册
    [WXApi registerApp:appKey enableMTA:YES];

    return YES;
}


- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    return  [WXApi handleOpenURL:url delegate:[WXApiManager sharedManager]];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [WXApi handleOpenURL:url delegate:[WXApiManager sharedManager]];
}

- (void)applicationWillResignActive:(UIApplication *)application {

}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}


@end
