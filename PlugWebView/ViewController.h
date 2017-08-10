//
//  ViewController.h
//  PlugWebView
//
//  Created by 黄世光 on 2016/11/3.
//  Copyright © 2016年 黄世光. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *mytextField;
- (IBAction)confirmBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *confirmBtn;
@property (weak, nonatomic) IBOutlet UIWebView *searchWebView;

@end

