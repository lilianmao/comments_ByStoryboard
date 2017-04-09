//
//  CommentsTableViewController.m
//  commentDemo
//
//  Created by 李林 on 2017/4/8.
//  Copyright © 2017年 lee. All rights reserved.
//

#import "CommentsTableViewController.h"
#import "commentCell.h"

@interface CommentsTableViewController ()

@property (nonatomic, strong) NSArray *comments;

@end

@implementation CommentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"comments";
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.estimatedRowHeight = 60;
    self.tableView.allowsSelection = false;
}

- (NSArray *)comments {
    if(_comments == nil){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"comments.plist" ofType:nil];
        NSArray *commentsArray = [NSArray arrayWithContentsOfFile:path];
        
        _comments = commentsArray;
    }
    
    return _comments;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.comments.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    commentCell *cell = [commentCell cellWithTableView:tableView];

    [cell setCommentContentWith:self.comments[indexPath.row]];
    
    return cell;
}


@end
