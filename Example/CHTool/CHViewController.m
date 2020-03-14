//
//  CHViewController.m
//  CHTool
//
//  Created by coderchou on 03/14/2020.
//  Copyright (c) 2020 coderchou. All rights reserved.
//

#import "CHViewController.h"
#import <CHPerson.h>
#import <CHTool.h>

@interface CHViewController ()
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *btn;
@end

@implementation CHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.btn];
    
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.label.frame = CGRectMake(100, 100, 200, 40);
    self.btn.frame = CGRectMake(100, 200, 200, 40);
    
}

- (void)didReceiveMeomoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - private method

- (void)testAction {
    CHPerson *person = [[CHPerson alloc] init];
    person.name = @"小明";
    person.address = @"白云区大街1👌";
    
    self.label.text = [CHTool getName:person];
}

#pragma mark - property

- (UILabel *)label {
    if (!_label) {
        _label  = [[UILabel alloc] init];
        _label.backgroundColor = [UIColor lightGrayColor];
        _label.textColor = [UIColor whiteColor];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.text = @"--";
        _label.font = [UIFont systemFontOfSize:15];
        _label.adjustsFontSizeToFitWidth = YES;
    }
    return _label;
}


- (UIButton *)btn {
    if (!_btn) {
        _btn  = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn.backgroundColor = [UIColor lightGrayColor];
        [_btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btn setTitle:@"测试" forState:UIControlStateNormal];
        [_btn addTarget:self action:@selector(testAction) forControlEvents:UIControlEventTouchUpInside];
        _btn.layer.borderColor = [UIColor redColor].CGColor;
        _btn.layer.borderWidth = 1.0;
    }
    return _btn;
}



@end
