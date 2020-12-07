//
//  ViewController.m
//  SZHChart
//
//  Created by 石子涵 on 2020/8/6.
//  Copyright © 2020 石子涵. All rights reserved.
//
#import <Masonry.h>
#import "ViewController.h"
#import "SZHChart.h"
#import "SZHWaveChart.h"
@interface ViewController ()
@property (nonatomic, strong) SZHChart *chartView;
@property (nonatomic, strong) SZHWaveChart *waveChartView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *arry = @[@3.2,@4.3,@3.6,@4.8,@2.1,@3.2,@4.5,@4.2,];
    self.chartView = [[SZHChart alloc] init];
    [self.chartView initWithViewsWithBooTomCount:arry.count AndLineDataAry:arry AndYMaxNumber:6];
    [self.view addSubview:self.chartView];
    [self.chartView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
//        make.center.equalTo(self.view);
        make.top.equalTo(self.view);
        make.height.mas_equalTo(250);
    }];
    self.chartView.topYlabel.text = @"米/秒";
    self.chartView.bottomXLabel.text = @"分钟";
    for (int i = 0; i < self.chartView.leftLblAry.count; i++) {
        UILabel *label = self.chartView.leftLblAry[i];
        label.text = [NSString stringWithFormat:@"%d", i + 2];
    }

    self.waveChartView = [[SZHWaveChart alloc] init];
    [self.waveChartView initWithViewsWithBooTomCount:arry.count AndLineDataAry:arry AndYMaxNumber:6];
    [self.view addSubview:self.waveChartView];
    [self.waveChartView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-100);
        make.height.mas_equalTo(230);
    }];
    self.chartView.topYlabel.text = @"步/分";
    self.chartView.bottomXLabel.text = @"分钟";
//    self.waveChartView.lineColor = [UIColor greenColor];
    for (int i = 0; i < self.waveChartView.leftLblAry.count; i++) {
           UILabel *label = self.waveChartView.leftLblAry[i];
           label.text = [NSString stringWithFormat:@"%d", i + 2];
       }
}


@end
