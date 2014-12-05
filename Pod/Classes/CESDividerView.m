//
//  CESDividerView.m
//  CESDividerView
//
//  Created by Craig Siemens on 2014-01-14.
//  Copyright (c) 2014 Craig Siemens. All rights reserved.
//

#import "CESDividerView.h"


@interface CESDividerView ()

@property (assign, nonatomic) IBInspectable BOOL vertical;

@end


@implementation CESDividerView

- (instancetype)initWithType:(CESDividerViewType)type
{
    self = [super init];
    if (self) {
        _type = type;
    }
    return self;
}

- (void)setType:(CESDividerViewType)type
{
    if (_type != type) {
        _type = type;
        [self invalidateIntrinsicContentSize];
    }
}

- (void)setVertical:(BOOL)vertical
{
    self.type = (vertical ? CESDividerViewTypeVertical : CESDividerViewTypeHorizonal);
}

- (CGSize)intrinsicContentSize
{
    CGFloat thickness = 1.0f/[[UIScreen mainScreen] scale];
    
    CGSize size = CGSizeMake(UIViewNoIntrinsicMetric, UIViewNoIntrinsicMetric);
    
    if (self.type == CESDividerViewTypeHorizonal) {
        size = CGSizeMake(UIViewNoIntrinsicMetric, thickness);
    }
    else if (self.type == CESDividerViewTypeVertical) {
        size = CGSizeMake(thickness, UIViewNoIntrinsicMetric);
    }

    return size;
}


@end
