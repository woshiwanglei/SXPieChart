//
//  SXEvaluatingAnalyseTopView.m
//  SXPieChart
//
//  Created by wanglei on 16/10/24.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "SXEvaluatingAnalyseTopView.h"

@implementation SXEvaluatingAnalyseTopView

- (void)awakeFromNib{
    [super awakeFromNib];
    [_editButton addTarget:self action:@selector(clickEditButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clickEditButton{
    _clickEditButtonBlock();
}

@end
