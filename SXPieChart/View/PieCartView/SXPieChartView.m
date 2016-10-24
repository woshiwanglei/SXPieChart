//
//  SXPieChartView.m
//  SXPieChart
//
//  Created by wanglei on 16/10/18.
//  Copyright © 2016年 wanglei. All rights reserved.
//
#import "SXPieChartView.h"
#import "SXPieChartMaskView.h"
const CGFloat kRadius = 92;
const CGFloat kCircleTime = 1.5;

@interface SXPieChartView()
{
    NSMutableArray *_ratioInChartArray;
    NSArray *_chooseRatioArray;
    NSArray *_colorArray;
    CGPoint _center;
    CADisplayLink *_link;
    CGFloat _circleRatio;
    SXPieChartMaskView *_maskView;
    NSMutableArray *_descriptionLabelCenterArray;
}
@end

@implementation SXPieChartView
- (instancetype)initWithFrame:(CGRect)frame andChooseRatioArray:(NSArray *)chooseRatioArray{
    if ( self = [super initWithFrame:frame] ) {
        self.backgroundColor = [UIColor clearColor];
        _chooseRatioArray = chooseRatioArray;
        _colorArray = @[[UIColor colorWithRed:66 / 255.0 green:138 / 255.0 blue:223 / 255.0 alpha:1.0],[UIColor colorWithRed:79 / 255.0 green:225 / 255.0 blue:177 / 255.0 alpha:1.0],[UIColor colorWithRed:250 / 255.0 green:255 / 255.0 blue:0 / 255.0 alpha:1.0],[UIColor colorWithRed:247 / 255.0 green:58 / 255.0 blue:121 / 255.0 alpha:1.0]].copy;
        _ratioInChartArray = @[].mutableCopy;
        _descriptionLabelCenterArray = @[].mutableCopy;
        for ( int i = 0; i < chooseRatioArray.count - 1; i++ ) {
            NSNumber *ratioInChart = @([chooseRatioArray[i] floatValue] / 100.0);
            [_ratioInChartArray addObject:ratioInChart];
        }
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    CGFloat startAngel = M_PI_2*3;
    _center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    for ( int i = 0; i < _ratioInChartArray.count + 1; i++ ) {
        UIBezierPath *path = [UIBezierPath bezierPath];
        UIColor *c = _colorArray[i];
        if ( i < _ratioInChartArray.count ) {
            float ang = [_ratioInChartArray[i] floatValue];
            [path addArcWithCenter:_center radius:kRadius startAngle:startAngel endAngle:startAngel + ang * M_PI * 2 clockwise:YES];
            
            CGFloat angle = startAngel + (ang * M_PI * 2) / 2;
            CGFloat x = _center.x + (kRadius * 6 / 7) * cos(angle);
            CGFloat y = _center.y + (kRadius * 6 / 7) * sin(angle);
            [_descriptionLabelCenterArray addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
            
            startAngel += ang * M_PI * 2;
        }
        else{
            [path addArcWithCenter:_center radius:kRadius startAngle:startAngel endAngle:M_PI_2*3 clockwise:YES];
            
            CGFloat angle = startAngel + ( M_PI_2 * 3 + M_PI * 2 - startAngel) / 2;
            CGFloat x = _center.x + (kRadius * 6 / 7) * cos(angle);
            CGFloat y = _center.y + (kRadius * 6 / 7) * sin(angle);
            [_descriptionLabelCenterArray addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
        }
        path.lineWidth = 5;
        path.lineCapStyle = kCGLineCapButt;
        [path addLineToPoint:_center];
        [c setFill];
        [path fill];
    }
    
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(circle)];
    _circleRatio = 0;
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    _link = link;
}

- (void)circle{
    _circleRatio += 360 / (60 * kCircleTime);
    [_maskView removeFromSuperview];
    if ( _circleRatio >= 360 ) {
        [_link invalidate];
        _link = nil;
        [self addAllLabel];
    }
    else{
        _maskView = [[SXPieChartMaskView alloc] initWithFrame:CGRectMake(_center.x - kRadius - 1, _center.y - kRadius - 1, kRadius * 2 + 2, kRadius * 2 + 2) andClearRatio:_circleRatio];
        [self addSubview:_maskView];
    }
}

- (void)addAllLabel{
    NSArray *optionArray = @[@"A",@"B",@"C",@"D"].copy;
    for ( int i = 0; i < _descriptionLabelCenterArray.count; i++ ) {
        UILabel *descriptionLabel = [UILabel new];
        descriptionLabel.font = [UIFont systemFontOfSize:11];
        descriptionLabel.text = [NSString stringWithFormat:@"%@:%.2f%%",optionArray[ i ],[_chooseRatioArray[ i ] floatValue]];
        [descriptionLabel sizeToFit];
        NSValue *center = _descriptionLabelCenterArray[ i ];
        CGPoint fanShapeCenter = center.CGPointValue;
        descriptionLabel.center = fanShapeCenter;
        
        if ( [_chooseRatioArray[ i ] floatValue] != 0 ) {
            [self addSubview:descriptionLabel];
            descriptionLabel.alpha = 0;
            [UIView animateWithDuration:1 animations:^{
                descriptionLabel.alpha = 1;
            }];
        }
    }
}

@end
