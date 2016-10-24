//
//  ViewController.m
//  SXPieChart
//
//  Created by wanglei on 16/10/18.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "SXPieChartView.h"
#import "SXEvaluatingAnalyseTopView.h"
#import "SXScrollView.h"
#import "SXTool.h"
#import "SXEvaluatingAnalyseBottomData.h"
#import "SXEvaluateAnalyseButtomViewItem.h"
#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define SXBLUE [UIColor colorWithRed:38 / 255.0 green:154 / 255.0 blue:229 / 255.0 alpha:1]
#define SXGRAY [UIColor colorWithRed:111 / 255.0 green:113 / 255.0 blue:121 / 255.0 alpha:1]
#define SXYELLOW [UIColor colorWithRed:239 / 255.0 green:173 / 255.0 blue:76 / 255.0 alpha:1]
#define SXBLACK [UIColor colorWithRed:76 / 255.0 green:76 / 255.0 blue:76 / 255.0 alpha:1]
#define SXBLUE2 [UIColor colorWithRed:69 / 255.0 green:168 / 255.0 blue:232 / 255.0 alpha:1]
#define SXGRAY03 [UIColor colorWithRed:111 / 255.0 green:113 / 255.0 blue:121 / 255.0 alpha:0.3]


#define FORCE_CLOSE_KEYBOARD [[UIApplication sharedApplication].keyWindow endEditing:YES]
#define DOCMENT_PATH [NSSearchPathForDirectoriesInDomains( NSDocumentDirectory, NSUserDomainMask, YES) lastObject]
#define OSVersionIsAtLast7 ([[UIDevice currentDevice].systemVersion floatValue] >= 7.0)
#define OSVersionIsAtLast8 ([[UIDevice currentDevice].systemVersion floatValue] >= 8.0)

#define Screen_Width     ([UIScreen mainScreen].bounds.size.width)
#define Screen_Height    ([UIScreen mainScreen].bounds.size.height)
#define Color_With_Rgb(r,g,b,a)   ([UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a])
#define SXPadding 12
@interface ViewController ()
{
    SXScrollView *_mainScrollView;
    UIView *_bottomView;
    SXPieChartView *_pieChartView;
    CGFloat _bottomItemStartY;
}
@property (strong,nonatomic) NSArray *dataSource;
@property (strong, nonatomic) NSMutableArray *dataArray;
@end

@implementation ViewController
- (NSArray *)dataSource{
    if ( !_dataSource ) {
        _dataSource = @[@{@"num":@"10",@"people":@"张三，李四，王五，陈六，张三，李四，王五，陈六，张三，李四，王五，陈六，张三，李四，王五，陈六"},@{@"num":@"20",@"people":@"张三，李四，王五，陈六，张三，李四，王五，陈六"},@{@"num":@"30",@"people":@"张三，李四，王五，陈六，张三，李四，王五，陈六"},@{@"num":@"40",@"people":@"张三，李四，王五，陈六，张三，李四，王五，陈六"}].copy;
    }
    return _dataSource;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:41 / 255.0 green:141 / 255.0 blue:227 / 255.0 alpha:1];
    
    [self initData];
    [self initView];
}

- (void)initData{
    _dataArray = @[].mutableCopy;
    for ( NSDictionary *dic in self.dataSource ) {
        SXEvaluatingAnalyseBottomData *bottomData = [SXEvaluatingAnalyseBottomData new];
        [bottomData setValuesForKeysWithDictionary:dic];
        bottomData.open = NO;
        [self.dataArray addObject:bottomData];
    }
}

- (void)initView{
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _mainScrollView = [[SXScrollView alloc] initWithFrame:CGRectMake(0, 64, Screen_Width, Screen_Height - 64)];
    [self.view addSubview:_mainScrollView];
    
    [self loadData];
}

- (void)loadData{
    SXEvaluatingAnalyseTopView *topView = [[[NSBundle mainBundle] loadNibNamed:@"SXEvaluatingAnalyseTopView" owner:self options:nil] lastObject];
    topView.frame = CGRectMake(0, 0, Screen_Width, 100);
    topView.clickEditButtonBlock = ^{
        NSLog(@"跳转到编辑页面");
    };
    [_mainScrollView addSubview:topView];
    
    _pieChartView = [[SXPieChartView alloc] initWithFrame:CGRectMake(15, 100, Screen_Width - 30, 270) andChooseRatioArray:@[@11,@22,@33,@34]];
    [_mainScrollView addSubview:_pieChartView];
    
    UIView *grayLineView = [[UIView alloc] initWithFrame:CGRectMake(0, 370, Screen_Width, 1)];
    grayLineView.backgroundColor = Color_With_Rgb(214, 215, 218, 1);
    [_mainScrollView addSubview:grayLineView];
    
    [self updateBottomView];
}

- (void)updateBottomView{
    [_bottomView removeFromSuperview];
    _bottomView = [UIView new];
    _bottomItemStartY = 0;
    NSArray *optionArray = @[@"A",@"B",@"C",@"D"].copy;
    for ( int i = 0; i < _dataArray.count; i++ ) {
        SXEvaluatingAnalyseBottomData *data = _dataArray[ i ];
        SXEvaluateAnalyseButtomViewItem *itemView = [[[NSBundle mainBundle] loadNibNamed:@"SXEvaluateAnalyseButtomViewItem" owner:self options:nil] lastObject];
        itemView.openImageView.frame = CGRectMake(Screen_Width - 30, 10, 20, 20);
        itemView.topLine.frame = CGRectMake(0, 0, Screen_Width - 10, 1);
        itemView.numOfPeopleLabel.frame = CGRectMake(10, 10, 200, 20);
        itemView.numOfPeopleLabel.text = [NSString stringWithFormat:@"%@:%@人",optionArray[i],data.num];
        itemView.detailOfPeopleLabel.text = data.people;
        CGSize detailLabelSize = [itemView.detailOfPeopleLabel sizeThatFits:CGSizeMake(Screen_Width - 20, 1000)];
        itemView.detailOfPeopleLabel.frame = CGRectMake(10, [SXTool getBottom:itemView.numOfPeopleLabel] + 10, Screen_Width - 20, detailLabelSize.height);
        if ( data.open ) {
            itemView.openImageView.transform = CGAffineTransformRotate(itemView.openImageView.transform, M_PI);
            itemView.frame = CGRectMake(0, _bottomItemStartY, Screen_Width, 50 + itemView.detailOfPeopleLabel.frame.size.height);
            _bottomItemStartY += (50 + itemView.detailOfPeopleLabel.frame.size.height);
        }
        else{
            itemView.frame = CGRectMake(0, _bottomItemStartY, Screen_Width, 40);
            _bottomItemStartY += 40;
        }
        __block typeof(self) tempSelf = self;
        itemView.block = ^{
            data.open = !data.open;
            [tempSelf updateBottomView];
        };
        [_bottomView addSubview:itemView];
    }
    _bottomView.clipsToBounds = YES;
    _bottomView.frame = CGRectMake(0, [SXTool getBottom:_pieChartView], Screen_Width, _bottomItemStartY);
    [_mainScrollView addSubview:_bottomView];
}

@end
