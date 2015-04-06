//
//  CESViewController.m
//  CESDividerView
//
//  Created by Craig Siemens on 12/04/2014.
//  Copyright (c) 2014 Craig Siemens. All rights reserved.
//

#import "CESViewController.h"
#import "CESDividerView.h"


@interface CESViewController ()

@property (weak, nonatomic) IBOutlet UIView *programaticView;

@end


@implementation CESViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self setupVerticalDividerView];
    [self setupHorizontalDividerView];
}

- (void)setupVerticalDividerView
{
    CESDividerView *verticalDividerView = [[CESDividerView alloc] initWithType:CESDividerViewTypeVertical];
    verticalDividerView.translatesAutoresizingMaskIntoConstraints = NO;
    verticalDividerView.backgroundColor = [UIColor blueColor];
    
    [self.programaticView addSubview:verticalDividerView];
    
    [self.programaticView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[verticalDividerView]|"
                                                                    options:0
                                                                    metrics:nil
                                                                      views:NSDictionaryOfVariableBindings(verticalDividerView)]];
    
    [self.programaticView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[verticalDividerView]-40-|"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(verticalDividerView)]];
}

- (void)setupHorizontalDividerView
{
    CESDividerView *horizontalDividerView = [[CESDividerView alloc] initWithType:CESDividerViewTypeHorizontal];
    horizontalDividerView.translatesAutoresizingMaskIntoConstraints = NO;
    horizontalDividerView.backgroundColor = [UIColor magentaColor];
    
    [self.programaticView addSubview:horizontalDividerView];
    
    [self.programaticView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-40-[horizontalDividerView]"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(horizontalDividerView)]];
    
    [self.programaticView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[horizontalDividerView]|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(horizontalDividerView)]];
}

@end
