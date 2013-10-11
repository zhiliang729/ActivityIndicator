//
//  WTViewController.m
//  ActivityIndicator
//
//  Created by zhangliang on 13-10-11.
//  Copyright (c) 2013年 com.gooagoo.Gooagoo. All rights reserved.
//

#import "WTViewController.h"
#import "WTStatusBar.h"

@interface WTViewController ()
{
    BOOL isAnimo;
}

@end

@implementation WTViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [WTStatusBar setLoading:YES loadAnimated:YES];
    isAnimo = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)stopAndClear:(id)sender{
    
    if (isAnimo) {
        [WTStatusBar setLoading:NO loadAnimated:NO];
        [WTStatusBar clearStatus];
        isAnimo = NO;
    }else
    {
        [WTStatusBar setLoading:YES loadAnimated:YES];
        isAnimo = YES;
    }
    
    
}

@end
