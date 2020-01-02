//
//  EloanConstUrl.h
//  eloanLib
//
//  Created by liuyutian on 2019/12/16.
//  Copyright © 2019年 24290265@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#define eLoanBUNDLE_NAME @"eLoanBundle.bundle"

#define eLoanBUNDLE_PATH [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent: eLoanBUNDLE_NAME]

#define eLoanBUNDLE [NSBundle bundleWithPath: eLoanBUNDLE_PATH]

#define eLoanImg(img) [UIImage imageWithContentsOfFile:[eLoanBUNDLE_PATH stringByAppendingPathComponent:(img)]]


NS_ASSUME_NONNULL_BEGIN



@interface EloanConstUrl : NSObject

+(instancetype) sharedInstance;

@property (nonatomic,copy) NSString *requestUrl;

@end

//获取创建订单
FOUNDATION_EXTERN NSString *const orderInit_URL;


//获取订单进度
FOUNDATION_EXTERN NSString *const getCfg_URL;


//等待审核结果(中间页)接口
FOUNDATION_EXTERN NSString *const auditResult_URL;


//SDK视频面签已完成回调接口
FOUNDATION_EXTERN NSString *const faceComplete_URL;
NS_ASSUME_NONNULL_END
