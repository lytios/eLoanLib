//
//  ELOANViewController.m
//  eloanLib
//
//  Created by 24290265@qq.com on 11/26/2019.
//  Copyright (c) 2019 24290265@qq.com. All rights reserved.
//

#import "ELOANViewController.h"
#import "EloanHomeVC.h"
#import "EloanHomeModel.h"
#import "EloanTableViewCell.h"
#import <YYModel/YYModel.h>
@interface ELOANViewController ()<UITableViewDelegate,UITableViewDataSource>


@property (nonatomic,strong) UITableView  *tableview ;

@property (nonatomic,strong)NSMutableDictionary *dataDic;

@property (nonatomic,copy)NSArray *rowArray;
@end

@implementation ELOANViewController




- (void)btnClick
{
    [self.view endEditing:YES];
    
    EloanHomeModel *model =  [EloanHomeModel yy_modelWithDictionary:self.dataDic];
    UINavigationController *nav = [EloanHomeVC eNavigationControllerWithClassModel:model];
    nav.modalPresentationStyle = 0;
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableview = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    [self.tableview registerNib:[UINib nibWithNibName:@"EloanTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"EloanTableViewCell"];

    [self.view addSubview:self.tableview];
    self.dataDic = [NSMutableDictionary dictionary];
    
//    //bidScene     是    String    中标场景（0：中标前 1:中标后）
//    @property (nonatomic,copy)NSString *bidScene;
//
//    //bidScene     是    String    期数 (只能是2位及以下数字)
//    @property (nonatomic,copy)NSString *repayPeriod;
//
    
    
    [self.dataDic addEntriesFromDictionary:@{
                                             @"regfrom":@"guopai",
                                             @"platNo":@"下易立进各争明",
                                             @"assurerNo":@"S36092776",
                                             @"bankCode":@"8640328375",
                                             @"userName":@"王兴霖",
                                             @"idCard":@"410802198404280010",
                                             @"mobile":@"15168421330",
                                             @"loanMoney":@"100000",
                                             @"sourceOrderNo":@"x0901005",
                                             @"tenderNo":@"55117321",
                                             @"marketingArchivesNum":@"46000156",
                                             @"busiType":@"19",
                                             @"url":@"http://192.168.0.224:19081/api",
                                             @"HRfaceUrl":@"http://114.55.55.41:8998",
                                             @"payStatus":@"1",
                                             @"signMode":@"1",
                                             @"bidScene":@"1",
                                             @"repayPeriod":@"12"
                                             }];
//    [self.dataDic addEntriesFromDictionary:@{
//                                             @"regfrom":@"guopai",
//                                             @"platNo":@"guopai",
//                                             @"assurerNo":@"S02000071",
//                                             @"bankCode":@"7122681835",
//                                             @"userName":@"王兴霖",
//                                             @"idCard":@"410802198404280010",
//                                             @"mobile":@"18903892876",
//                                             @"loanMoney":@"150000",
//                                             @"sourceOrderNo":@"123456030",
//                                             @"tenderNo":@"55117321",
//                                             @"marketingArchivesNum":@"46000014",
//                                             @"busiType":@"19",
//                                             @"url":@"http://14.17.122.160:19081",
//                                             @"HRfaceUrl":@"http://114.55.55.41:8998",
//                                             @"payStatus":@"dasdas",
//                                             @"signMode":@"3",
//                                             @"bidScene":@"0",
//                                             @"repayPeriod":@"12"
//                                             }];
//    [self.dataDic addEntriesFromDictionary:@{
//                                             @"regfrom":@"guopai",
//                                             @"platNo":@"gp",
//                                             @"assurerNo":@"D10010936",
//                                             @"bankCode":@"0100101994",
//                                             @"userName":@"朱迪",
//                                             @"idCard":@"310230199205294958",
//                                             @"mobile":@"17100000305",
//                                             @"loanMoney":@"86520",
//                                             @"sourceOrderNo":@"2020041516131110000046",
//                                             @"tenderNo":@"55117321",
//                                             @"marketingArchivesNum":@"10010397",
//                                             @"busiType":@"19",
//                                             @"url":@"http://14.17.122.160:9081/api",
//                                             @"HRfaceUrl":@"http://signesb.hrfax.cn",
//                                             @"payStatus":@"1",
//                                             @"signMode":@"2"
//                                             }];
    self.rowArray =  @[@{@"name":@"经办银行",@"code":@"regfrom"},
                       @{@"name":@"平台编号",@"code":@"platNo"},
                       @{@"name":@"合作方代码",@"code":@"assurerNo"},
                       @{@"name":@"业务经办银行编码",@"code":@"bankCode"},
                       @{@"name":@"客户姓名",@"code":@"userName"},
                       @{@"name":@"身份证号码",@"code":@"idCard"},
                       @{@"name":@"手机号",@"code":@"mobile"},
                       @{@"name":@"意向价格",@"code":@"loanMoney"},
                       @{@"name":@"机构订单号",@"code":@"sourceOrderNo"},
                       @{@"name":@"投标号",@"code":@"tenderNo"},
                       @{@"name":@"营销档案编号",@"code":@"marketingArchivesNum"},
                       @{@"name":@"业务品种",@"code":@"busiType"},
                       @{@"name":@"请求地址",@"code":@"url"},
                       @{@"name":@"面签地址",@"code":@"HRfaceUrl"},
                       @{@"name":@"支付状态",@"code":@"payStatus"},
                       @{@"name":@"签约环境",@"code":@"signMode"},
                       @{@"name":@"中标场景",@"code":@"bidScene"},
                       @{@"name":@"期数",@"code":@"repayPeriod"}
    ];
   
  
    self.tableview.delegate =self;
    self.tableview.dataSource = self;

    
    
    UIView * botomView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 80)];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 30, self.view.frame.size.width, 50)];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"确定" forState:0];
    [botomView addSubview:button ];
    self.tableview.tableFooterView = botomView;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.rowArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    EloanTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EloanTableViewCell"];
    if (cell == nil) {
        cell = [[EloanTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"EloanTableViewCell"];
    }
    cell.dataDic = self.dataDic;
    [cell bindModel:self.rowArray[indexPath.row]];
    
    return cell;
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    return 50;
}
@end
