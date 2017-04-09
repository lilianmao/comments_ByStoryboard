//
//  ViewController.m
//  commentDemo
//
//  Created by 李林 on 2017/3/8.
//  Copyright © 2017年 lee. All rights reserved.
//

#import "ViewController.h"
#import "CommentsTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CommentsTableViewController *commentVc = [[CommentsTableViewController alloc] init];
    [self presentViewController:[[UINavigationController alloc] initWithRootViewController:commentVc] animated:true completion:nil];
}


@end
