//
//  SZHWaveChart.h
//  SZHChart
//
//  Created by 石子涵 on 2020/8/8.
//  Copyright © 2020 石子涵. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SZHWaveChart : UIView
@property double YmaxNumber;  //Y轴上的最大数值,默认为6

@property (nonatomic, strong) UILabel *topYlabel; //纵轴顶部显示单位的label
@property (nonatomic, strong) UILabel *bottomXLabel; //X轴底部显示单位的label

@property (nonatomic, strong) NSArray<UILabel *>*leftLblAry; //左边的文本label数组
@property (nonatomic, strong) NSArray<NSNumber *> *lineDataAry; //在折线图上显示的数据的数组

@property int bottomXCount; //底部X轴的刻度点,默认为6

#pragma mark- 分割线
/** 折线颜色（默认为设计图的颜色） */
@property (nonatomic, strong) UIColor *lineColor;
/** 折线宽（默认1） */
@property (nonatomic, assign) CGFloat lineWidth;

/** 渐变颜色集合 */
@property (nonatomic, strong) NSArray *colorArr;
/** 是否填充颜色渐变（默认YES） */
@property (nonatomic, assign) BOOL showColorGradient;


- (void)initWithViewsWithBooTomCount:(int )bottomCout AndLineDataAry:(NSArray *)lineDataAry AndYMaxNumber:(double )YmaxNumber;
@end


NS_ASSUME_NONNULL_END
