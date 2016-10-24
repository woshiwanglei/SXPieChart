//
//  SXPieChartMaskView.m
//  SXPieChart
//
//  Created by wanglei on 16/10/18.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "SXPieChartMaskView.h"
@interface SXPieChartMaskView()
{
    CGFloat _ratio;
    CGPoint _center;
}
@end

@implementation SXPieChartMaskView
- (instancetype)initWithFrame:(CGRect)frame andClearRatio:(CGFloat)ratio{
    if ( self = [super initWithFrame:frame] ) {
        self.backgroundColor = [UIColor clearColor];
        _ratio = ratio;
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    CGFloat startAngel = M_PI_2*3;
    _center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    UIColor *c = nil;
    for ( int i = 0; i < 2; i++ ) {
        UIBezierPath *path = [UIBezierPath bezierPath];
        if ( i == 0 ) {
            float ang = _ratio / 360.0;
            [path addArcWithCenter:_center radius:self.frame.size.width / 2 startAngle:startAngel endAngle:startAngel + ang*M_PI*2 clockwise:YES];
            startAngel += ang*M_PI*2;
            c = [UIColor clearColor];
        }
        else{
            [path addArcWithCenter:_center radius:self.frame.size.width / 2 startAngle:startAngel endAngle:M_PI_2*3 clockwise:YES];
            c = [UIColor whiteColor];
        }
        path.lineWidth = 5;
        path.lineCapStyle = kCGLineCapButt;
        [path addLineToPoint:_center];
        [c setFill];
        [path fill];
    }
}

@end
