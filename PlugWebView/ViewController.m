//
//  ViewController.m
//  PlugWebView
//
//  Created by 黄世光 on 2016/11/3.
//  Copyright © 2016年 黄世光. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa.h>
@interface ViewController ()<UIWebViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.confirmBtn.backgroundColor = [UIColor orangeColor];
    self.searchWebView.backgroundColor = [UIColor whiteColor];
    self.searchWebView.delegate = self;
    self.mytextField.placeholder = @"请输入网址";
    self.mytextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    @weakify(self)
    [RACObserve(self.searchWebView.scrollView, contentOffset)subscribeNext:^(id x) {
        @strongify(self);
        if (self.searchWebView.scrollView.contentOffset.y > 50) {
            self.mytextField.hidden = YES;
            self.confirmBtn.hidden = YES;
        }else{
            self.mytextField.hidden = NO;
            self.confirmBtn.hidden = NO;
        }
    }];
}
-(void)confirmBtn:(id)sender{
    if (self.mytextField.text.length != 0) {
        NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:self.mytextField.text]];
        [self.searchWebView loadRequest:req];
    }else{
        self.mytextField.placeholder = @"请输入正确的网址";
    }
    
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{

}
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    self.mytextField.text = @"请输入正确的网址";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)ConfirmBtn:(id)sender {
}
@end
