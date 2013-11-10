//
//  BGViewController.m
//  BGCategory
//
//  Created by Bishal Ghimire on 11/10/13.
//  Copyright (c) 2013 Bishal Ghimire. All rights reserved.
//

#import "BGViewController.h"
#import "NSString+NepaliNumber.h"

@interface BGViewController ()

@property (weak, nonatomic) IBOutlet UILabel *labelTime;
@property (weak, nonatomic) IBOutlet UITextField *textFieldInput;
@property (weak, nonatomic) IBOutlet UIButton *buttonConvert;
@property (weak, nonatomic) IBOutlet UILabel *labelConvertedValue;

@end

@implementation BGViewController

#pragma mark - Action
- (IBAction)buttonConvertAction:(id)sender {
    _labelConvertedValue.text = [_textFieldInput.text string2NepaliNumber];
}

#pragma mark - View

- (void)viewDidLoad {
    [super viewDidLoad];
    CFGregorianDate currentDate = CFAbsoluteTimeGetGregorianDate(CFAbsoluteTimeGetCurrent(), CFTimeZoneCopySystem());
    _labelTime.text = [[NSString stringWithFormat:@"%02d:%02d:%02.0f", currentDate.hour, currentDate.minute, currentDate.second] string2NepaliNumber];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
