//
//  commentCell.m
//  commentDemo
//
//  Created by 李林 on 2017/3/8.
//  Copyright © 2017年 lee. All rights reserved.
//

#import "commentCell.h"

@interface commentCell()

@property (weak, nonatomic) IBOutlet UILabel *commentContent;

@end

@implementation commentCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"commentCell";
    commentCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if(cell == nil){
        cell = [[[NSBundle mainBundle] loadNibNamed:@"commentCell" owner:nil options:nil] lastObject];
    }
    
    return cell;
}

- (void)setCommentContentWith:(NSString *)content {
    self.commentContent.text = content;
}

@end
