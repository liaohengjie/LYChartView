//
//  ViewController.m
//  LYChartView
//
//  Created by HENAN on 17/1/12.
//  Copyright © 2017年 LYS. All rights reserved.
//

#import "ViewController.h"
#import "LYChartView.h"
@interface ViewController ()
@property (nonatomic,strong)LYChartView *chartView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _chartView = [[LYChartView alloc] initWithFrame:CGRectMake(0, 20, CGRectGetWidth(self.view.bounds), 200) column:9 row:5 type:(LYChartViewTypeLine) title:@"折线图" unit:@"ms"];
    
    [_chartView customColumnIndexData:@[@"1",@"2",@"3",@"4",@"5"]];
    [_chartView customValueData:@[@"1",@"2",@"3",@"4",@"5"]];

    
    [_chartView reloadData];
    [self.view addSubview:_chartView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
