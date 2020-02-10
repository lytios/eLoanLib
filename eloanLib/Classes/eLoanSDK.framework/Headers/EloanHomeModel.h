//
//  EloanHomeModel.h
//  eloanLib
//
//  Created by liuyutian on 2019/12/16.
//  Copyright © 2019年 24290265@qq.com. All rights reserved.
//

#import "YTObject.h"

NS_ASSUME_NONNULL_BEGIN




@interface EloanHomeModel : YTObject
//参数名    必选    类型    说明

//platNo    是    String    经办银行
@property (nonatomic,copy)NSString *regfrom;

//platNo    是    String    平台编号
@property (nonatomic,copy)NSString *platNo;

//assurerNo    是    String    合作方代码
@property (nonatomic,copy)NSString *assurerNo;

//bankCode    是    String    业务经办银行编码
@property (nonatomic,copy)NSString *bankCode;

//userName    是    String    客户姓名
@property (nonatomic,copy)NSString *userName;

//idCard    是    String    身份证号码
@property (nonatomic,copy)NSString *idCard;

//mobile    是    String    手机号
@property (nonatomic,copy)NSString *mobile;

//loanMoney    是    String    意向价格
@property (nonatomic,copy)NSString * loanMoney;

//sourceOrderNo    是    String    机构订单号
@property (nonatomic,copy)NSString *sourceOrderNo;

//tenderNo    是    String    投标号
@property (nonatomic,copy)NSString *tenderNo;

//marketingArchivesNum    是    String    营销档案编号
@property (nonatomic,copy)NSString *marketingArchivesNum;

//busiType    是    Integer    业务品种
@property (nonatomic,copy)NSString * busiType;

//busiType    是    String    请求地址
@property (nonatomic,copy)NSString *url;

//busiType    是    String    面签地址
@property (nonatomic,copy)NSString *HRfaceUrl;


- (id)infoCheck;
+ (NSDictionary *)dicFromObject:(NSObject *)object;



@end

NS_ASSUME_NONNULL_END
