//
//  SXEvaluateAnalyseButtomViewItem.m
//  SXPieChart
//
//  Created by wanglei on 16/10/24.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "SXEvaluateAnalyseButtomViewItem.h"

@implementation SXEvaluateAnalyseButtomViewItem

- (void)awakeFromNib{
    [super awakeFromNib];
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(open)];
    [self addGestureRecognizer:tapGR];
}

- (void)open{
    if ( _block ) {
        _block();
    }
}

@end
