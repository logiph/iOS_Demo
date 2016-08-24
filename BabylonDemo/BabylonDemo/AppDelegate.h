//
//  AppDelegate.h
//  BabylonDemo
//
//  Created by logiph on 8/23/16.
//  Copyright © 2016 logiph. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@interface Book : NSObject

@property (nonatomic, readonly) NSString *text;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *author;

- (void)setText:(NSString *)text;

@end


@class ChildClass;

@interface RootClass : NSObject
@property (nonatomic, strong) ChildClass *child;
@end

@interface ChildClass : NSObject
@property (nonatomic, strong) RootClass *root;
@property (nonatomic, copy) ChildClass *next;
@end

@class ViewController;
@class WGLViewContraller;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

