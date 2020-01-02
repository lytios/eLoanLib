//
//  EloanTableViewCell.m
//  eloanLib_Example
//
//  Created by liuyutian on 2019/12/23.
//  Copyright © 2019年 24290265@qq.com. All rights reserved.
//

#import "EloanTableViewCell.h"

@interface EloanTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UITextField *inputTextField;

@property (nonatomic,copy) NSString *code;
@end

@implementation EloanTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
}
- (IBAction)changeEnd:(UITextField *)sender {
    if ([sender.text length] > 0) {
        [self.dataDic setObject:self.inputTextField.text forKey:self.code];
    }else{
        [self.dataDic removeObjectForKey:self.code];
    }

}

- (void)bindModel:(NSDictionary *)rowDic
{
    self.titleLabel.text = rowDic[@"name"];
    self.inputTextField.placeholder = [NSString stringWithFormat:@"请输入:%@",rowDic[@"name"]];
    self.code = rowDic[@"code"];
   
    if (self.dataDic[self.code]) {
        self.inputTextField.text = self.dataDic[self.code];
    }
}

@end
