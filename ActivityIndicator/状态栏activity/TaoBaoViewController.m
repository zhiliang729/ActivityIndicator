//
//  TaoBaoViewController.m
//  ActivityIndicator
//
//  Created by zhangliang on 13-10-11.
//  Copyright (c) 2013年 com.gooagoo.Gooagoo. All rights reserved.
//

#import "TaoBaoViewController.h"
#import "TFIndicatorView.h"

@interface TaoBaoViewController ()

@end

@implementation TaoBaoViewController
@synthesize page;
@synthesize mi_statusbar;
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
    self.page=[[UIPageControl alloc]initWithFrame:CGRectMake(0, 0, 100, 20)];
    
    self.page.backgroundColor=[UIColor clearColor];
    self.page.numberOfPages=3;
    
    self.mi_statusbar=[[UIWindow alloc]initWithFrame:CGRectMake(0, 0, 100, 20)];
    mi_statusbar.center=CGPointMake(160, 10);
    [mi_statusbar addSubview:self.page];
    mi_statusbar.backgroundColor=[UIColor blackColor];
    [mi_statusbar setHidden:NO];
    mi_statusbar.windowLevel = UIWindowLevelStatusBar + 1.0f;
    mi_statusbar.alpha=1;
    
    [self.page release];
    
    NSTimer *timer=[NSTimer timerWithTimeInterval:0.2f target:self selector:@selector(pageNumberChanged) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop]addTimer:timer forMode:NSDefaultRunLoopMode];
    
    
    TFIndicatorView *indicator = [[TFIndicatorView alloc]initWithFrame:CGRectMake(135, 180, 50, 50)];
    [indicator startAnimating];
    [self.view addSubview:indicator];
}
-(void)pageNumberChanged
{
    static int i=0;
    i++;
    i=i>2?0:i;
    self.page.currentPage=i;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.mi_statusbar setHidden:YES];
    [self.page removeFromSuperview];
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
