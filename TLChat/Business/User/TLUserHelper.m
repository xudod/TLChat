//
//  TLUserHelper.m
//  TLChat
//
//  Created by 李伯坤 on 16/2/6.
//  Copyright © 2016年 李伯坤. All rights reserved.
//

#import "TLUserHelper.h"

static TLUserHelper *helper;

@implementation TLUserHelper

+ (TLUserHelper *) sharedHelper
{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        helper = [[TLUserHelper alloc] init];
    });
    return helper;
}

- (id) init
{
    if (self = [super init]) {
        self.user = [[TLUser alloc] init];
        self.user.userID = @"1000";
        self.user.avatarURL = @"http://img.jsqq.net/uploads/allimg/140903/1_140903051019_18.png";
        self.user.nikeName = @"李伯坤";
        self.user.username = @"li-bokun";
        self.user.phoneNumber = @"18888888888";
        self.user.qqNumber = @"1159197873";
        self.user.email = @"libokun@126.com";
        self.user.location = @"山东 滨州";
        self.user.sex = @"男";
        self.user.motto = @"Hello world!";
    }
    return self;
}

@end
