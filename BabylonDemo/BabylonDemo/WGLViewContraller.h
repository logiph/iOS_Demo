//
//  WGLViewContraller.h
//  BabylonDemo
//
//  Created by logiph on 8/24/16.
//  Copyright © 2016 logiph. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WGLViewContraller : UIViewController

@property(nonatomic, strong) UIWebView *webview;

- (instancetype)initWithBundlePath:(NSString *)path;

@end
