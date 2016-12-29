//
//  ViewController.m
//  29-AutoLayout_VFL
//
//  Created by YU on 2016/11/7.
//  Copyright © 2016年 YU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     NSArray *hToolbars = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[toolbar]|" options:0 metrics:0 views:@{@"toolbar":self.toolbar}];
     NSArray *vToolbars = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[toolbar]|" options:0 metrics:0 views:@{@"toolbar":self.toolbar}];
     
     [NSLayoutConstraint activateConstraints:hToolbars];
     [NSLayoutConstraint activateConstraints:vToolbars];
     */
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSArray *hImageView = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[IV]|" options:0 metrics:0 views:@{@"IV":self.imageView}];
    
    NSArray *vImageView = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-80-[IV]-20-|" options:0 metrics:0 views:@{@"IV":self.imageView}];
    
    [NSLayoutConstraint activateConstraints:hImageView];
    [NSLayoutConstraint activateConstraints:vImageView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
