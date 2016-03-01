//
//  TLTextMessageCell.m
//  TLChat
//
//  Created by 李伯坤 on 16/3/1.
//  Copyright © 2016年 李伯坤. All rights reserved.
//

#import "TLTextMessageCell.h"

@implementation TLTextMessageCell

- (void)setMessage:(TLMessage *)message
{
    _message = message;
    [self.textLabel setText:message.text];
}

@end