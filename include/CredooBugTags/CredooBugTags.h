//
//  CredooBugTags.h
//  CredooBugTags
//
//  Created by 徐佳良 on 16/10/28.
//  Copyright © 2016年 Credoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CredooBugTags : NSObject

// 初始化BugTags
+(CredooBugTags *)sharedInstance;

// 平台上分配的AppId 和 AppSecret
-(void)setAppId:(NSString *)appId appSecret:(NSString *)appSecret;

//上传自定义信息
-(void)setUserInfo:(NSDictionary *)userinfo;

// 是否开启BugTags
-(void)setEnable:(BOOL)enable;

@end
