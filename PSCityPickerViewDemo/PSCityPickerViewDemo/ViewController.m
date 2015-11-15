//
//  ViewController.m
//  PSCityPickerViewDemo
//
//  Created by Pan on 15/11/15.
//  Copyright © 2015年 Shengpan. All rights reserved.
//

#import "ViewController.h"

#import "PSCityPickerView.h"

@interface ViewController ()<PSCityPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) PSCityPickerView *cityPicker;

@end

@implementation ViewController

#pragma mark - Life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textField.inputView = self.cityPicker;
}

#pragma mark - PSCityPickerViewDelegate
- (void)cityPickerViewValueChanged
{
    [self.textField setText:[NSString stringWithFormat:@"%@ %@ %@",self.cityPicker.province,self.cityPicker.city,self.cityPicker.district]];
}

#pragma mark - Getter and Setter
- (PSCityPickerView *)cityPicker
{
    if (!_cityPicker)
    {
        _cityPicker = [[PSCityPickerView alloc] init];
        _cityPicker.cityPickerDelegate = self;
    }
    return _cityPicker;
}

@end
