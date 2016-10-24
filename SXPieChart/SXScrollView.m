//
//  SXScrollView.m
//  生学堂老师端
//
//  Created by shuhang on 16/8/8.
//  Copyright © 2016年 王磊. All rights reserved.
//

#import "SXScrollView.h"

#define SXPadding 12

@implementation SXScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
    }
    return self;
}

// 往view中添加了子控件
- (void)didAddSubview:(UIView *)subview
{
    [self scrollViewToFit];
}

// 从view中移除了子控件
- (void)willRemoveSubview:(UIView *)subview
{
    [self scrollViewToFit];
}



- (void)scrollViewToFit
{
    CGRect contentRect = CGRectZero;
    
    for (UIView *view in self.subviews) {
        // 返回一个包裹二者的rect
        contentRect = CGRectUnion(contentRect, view.frame);
    }
    
    CGFloat contentRectHeight = contentRect.size.height;
    // 如果当前的高度大于scrollview的高度  那么加一个间距
    if (contentRectHeight > self.frame.size.height) {
        contentRectHeight += SXPadding;
    }else{
        contentRectHeight = self.frame.size.height;
    }
    
    self.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, contentRectHeight);
    
}

@end
