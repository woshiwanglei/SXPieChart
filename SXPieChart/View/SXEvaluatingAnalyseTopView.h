//
//  SXEvaluatingAnalyseTopView.h
//  SXPieChart
//
//  Created by wanglei on 16/10/24.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SXEvaluatingAnalyseTopView : UIView

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberOfQuestionLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UIButton *editButton;
@property (copy, nonatomic) void(^clickEditButtonBlock)(void);

@end
