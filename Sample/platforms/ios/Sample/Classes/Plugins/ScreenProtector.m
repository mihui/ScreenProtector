//
//  ScreenProtector.m
//  Sample
//
//  Created by Mihui on 16/5/6.
//
//

#import "ScreenProtector.h"

@implementation ScreenProtector

static ScreenProtector *protector = nil;

- (void) protect{
    UIView *maskView = nil;
    if([ScreenProtector isOSVersion:8]){
        maskView = [[UIView alloc] initWithFrame: [[self webView] frame]];
        [maskView setBackgroundColor:[UIColor colorWithRed:0.220 green:0.549 blue:0.408 alpha:1.00]];
    }
    else{
        // iOS 8 and above
        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
        maskView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    }
    [maskView setTag:20160411];
    [[self webView] addSubview:maskView];
}

-(void) onActive:(UIApplication *)application{
    [self.commandDelegate evalJs:@"cordova.fireWindowEvent('protector.active');"];
}

-(void) onPause:(UIApplication *)application{
    [self.commandDelegate evalJs:@"cordova.fireWindowEvent('protector.pause');"];
}

+ (BOOL) isOSVersion:(int) version{
    if([[[UIDevice currentDevice] systemVersion] intValue] >= version){
        return YES;
    }
    return NO;
}

@end
