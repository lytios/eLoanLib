//
//  EloanTableViewCell.h
//  eloanLib_Example
//
//  Created by liuyutian on 2019/12/23.
//  Copyright © 2019年 24290265@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EloanTableViewCell : UITableViewCell

@property(nonatomic,strong)NSMutableDictionary *dataDic;

- (void)bindModel:(NSDictionary *)rowDic;

@end

NS_ASSUME_NONNULL_END
