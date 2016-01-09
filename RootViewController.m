//
//  RootViewController.m
//  TaxCalculatorApp
//
//  Created by Julian Lee on 1/8/16.
//  Copyright © 2016 MobileMakers. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property double caTax;
@property double chiTax;
@property double nyTax;
- (IBAction)onCalculateButtonTapped:(UIButton *)sender;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = 7.5;
    self.chiTax = 9.25;
    self.nyTax = 4.5;
}



- (IBAction)onCalculateButtonTapped:(UIButton *)sender {
    NSString *textValue = self.priceTextField.text;
    int intValue = textValue.intValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        int result = intValue * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%i", result];
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1) {
        int result = intValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%i", result];
    }
    else {
        int result = intValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%i", result];
    }
}

@end
