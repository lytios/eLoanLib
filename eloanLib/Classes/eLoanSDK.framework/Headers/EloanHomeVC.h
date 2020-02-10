//
//  EloanHomeVC.h
//  eloanLib
//
//  Created by liuyutian on 2019/12/16.
//  Copyright © 2019年 24290265@qq.com. All rights reserved.
//

#import "EloanBaseVC.h"

NS_ASSUME_NONNULL_BEGIN

@class EloanHomeModel;
@interface EloanHomeVC : EloanBaseVC

+ (UINavigationController *)eNavigationControllerWithBundle:(NSBundle *)bundle ClassModel:(EloanHomeModel *)model;

@property(nonatomic,strong,readonly)EloanHomeModel *model;

@end

NS_ASSUME_NONNULL_END
