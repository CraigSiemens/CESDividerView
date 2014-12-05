//
//  CESDividerView.h
//  CESDividerView
//
//  Created by Craig Siemens on 2014-01-14.
//  Copyright (c) 2014 Craig Siemens. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSUInteger, CESDividerViewType) {
    CESDividerViewTypeHorizonal = 0,
    CESDividerViewTypeVertical = 1
};


IB_DESIGNABLE
@interface CESDividerView : UIView

@property (assign, nonatomic) CESDividerViewType type;

- (instancetype)initWithType:(CESDividerViewType)type;

@end
