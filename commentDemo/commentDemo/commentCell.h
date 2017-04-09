//
//  commentCell.h
//  commentDemo
//
//  Created by 李林 on 2017/3/8.
//  Copyright © 2017年 lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface commentCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;

- (void)setCommentContentWith:(NSString *)content;

@end
