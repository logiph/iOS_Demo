//
//  BackgroundViewController.m
//  BabylonDemo
//
//  Created by logiph on 8/24/16.
//  Copyright © 2016 logiph. All rights reserved.
//

#import "BackgroundViewController.h"

@interface BackgroundViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation BackgroundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.autoresizesSubviews = NO;
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
- (IBAction)click:(id)sender {
    NSLog(@"%s", __FUNCTION__);
    
    
}

@end
