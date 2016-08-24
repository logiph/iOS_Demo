//
//  WGLViewContraller.m
//  BabylonDemo
//
//  Created by logiph on 8/24/16.
//  Copyright © 2016 logiph. All rights reserved.
//

#import "WGLViewContraller.h"

@interface WGLViewContraller () <UIWebViewDelegate>

@property(nonatomic, copy) NSString *path;
@end

@implementation WGLViewContraller

- (instancetype)initWithBundlePath:(NSString *)path {
    self = [super init];
    if (self) {
        _path = path;
    }

    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.autoresizesSubviews = NO;
    
    self.webview = [[UIWebView alloc] initWithFrame:self.view.bounds];
    self.webview.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.webview.opaque = NO;
    self.webview.delegate = self;
    self.webview.backgroundColor = [UIColor clearColor];
    self.webview.scrollView.scrollEnabled = NO;
    self.webview.userInteractionEnabled = YES;
    self.webview.hidden = YES;
    [self.view addSubview:self.webview];


    NSString *path = [NSString stringWithFormat:@"%@/%@", self.path, @"index1.html"];
    NSString *content = [NSString stringWithContentsOfURL:[NSURL fileURLWithPath:path] encoding:NSUTF8StringEncoding error:nil];
    NSURL *baseURL = [NSURL fileURLWithPath:self.path];

    if (baseURL && content) {
        [self.webview loadHTMLString:content baseURL:baseURL];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark -
#pragma mark UIWebViewDelegate

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {

    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView {

}

- (void)webViewDidFinishLoad:(UIWebView *)webView {

    NSLog(@"%s", __FUNCTION__);

    self.webview.hidden = NO;
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error {

}

@end
