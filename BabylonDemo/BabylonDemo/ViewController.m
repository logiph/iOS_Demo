//
//  ViewController.m
//  FirstDemo
//
//  Created by logiph on 7/25/16.
//  Copyright © 2016 logiph. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) IBOutlet UIWebView *web;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *aaa;
@property (strong, nonatomic) IBOutlet UIWebView *webview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

//    [[[ChildClass alloc] init] show];
    
    
    self.view.backgroundColor = [UIColor orangeColor];

//    [self.imageView sd_setImageWithURL:[[NSURL alloc] initWithString:@"https://www.baidu.com/img/bd_logo1.png"]];

//    self.button.isHighlighted = YES;
    
//    UITableView *tv = tvc.tableView;
    self.button.titleLabel.text = @"aoeuaeou";
    
    [self.button setTitle:@"aoeuaeou" forState:UIControlStateNormal];
    
//    UIScrollView
    
//    [self.button sd_setImageWithURL:[[NSURL alloc] initWithString:@"https://www.baidu.com/img/bd_logo1.png"]
//                           forState:UIControlStateNormal];
    
//    [self.button sd_setBackgroundImageWithURL:[[NSURL alloc] initWithString:@"https://www.baidu.com/img/bd_logo1.png"] forState:UIControlStateNormal];
//    [self.button.imageView sd_setImageWithURL:[NSURL alloc] initWithString:@"https://www.baidu.com/img/bd_logo1.png"];
//    [self.button setBackgroundImage:<#(nullable UIImage *)#> forState:<#(UIControlState)#>]
    
//    self.imageView.layer.anchorPoint = CGPointMake(0, 0);
    self.imageView.backgroundColor = [UIColor redColor];
    [self.imageView removeConstraints:self.imageView.constraints ];
    self.imageView.frame = CGRectMake(10, 10, 100, 100);
//    CALayer
//    self.imageView.clipsToBounds = YES;
    self.imageView.contentMode = UIViewContentModeScaleToFill;

//    UITabBarController 
    
//    CALayer
    self.aaa.numberOfLines = 0;
//    NSInteger
    self.aaa.text = @"第一行\n 第二行";
    self.aaa.backgroundColor = [UIColor blueColor];
    self.aaa.layer.anchorPoint = CGPointMake(0, 0);
    self.aaa.layer.transform = CATransform3DMakeRotation(2, 0, 0, 0);
    
    self.button.frame = CGRectMake(0, 0, 60, 60);
    [self.imageView addSubview:self.button];
//    CGAffineTransformMakeRotation(1.0);
    
//    UIScrollView
//    userInterfaceLayoutDirectionForSemanticContentAttribute:<#(UISemanticContentAttribute)#>
    

//    [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]]];
//    [self.webview loadHTMLString:@"<html><head></head><body style=\"background-color:transparent\">hello world</body></html>" baseURL:nil];
    
    
    
    NSString *content = [NSString stringWithContentsOfURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]] encoding:NSUTF8StringEncoding error:nil];
    
    NSURL *baseURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    
    [self.webview loadHTMLString:content baseURL:baseURL];
        self.webview.opaque = NO;
    self.webview.backgroundColor = [UIColor clearColor];
    self.webview.scrollView.scrollEnabled = NO;
    [self.webview request];
    [self.webview reload];
    
//    UIButton
//
//    UITableView
//    
//    
//    UICollectionView
//    
//    
//    UIScrollView

    NSInvocationOperation *op = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(fun:) object:nil];
    [[NSOperationQueue mainQueue] addOperation:op];
}

- (void)fun:(NSInvocationOperation *)operation {

    NSLog(@"%@", operation);
}

- (void)viewWillAppear:(BOOL)animated {
    
}

- (void)viewDidAppear:(BOOL)animated {
//    UITextView
    
    self.imageView.frame = CGRectZero;
    [self.imageView setNeedsLayout];
    [self.imageView setNeedsDisplay];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
