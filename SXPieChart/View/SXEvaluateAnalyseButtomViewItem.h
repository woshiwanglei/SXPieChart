//
//  SXEvaluateAnalyseButtomViewItem.h
//  SXPieChart
//
//  Created by wanglei on 16/10/24.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SXEvaluateAnalyseButtomViewItem : UIView
@property (weak, nonatomic) IBOutlet UILabel *numOfPeopleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *openImageView;
@property (weak, nonatomic) IBOutlet UILabel *detailOfPeopleLabel;
@property (weak, nonatomic) IBOutlet UIView *topLine;
@property (copy, nonatomic) void(^block)(void);
@end
