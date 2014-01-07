//
//  DTViewController.m
//  DTNavigationController
//
//  Created by silentcloud on 14-1-3.
//  Copyright (c) 2014年 silentcloud. All rights reserved.
//

#import "DTViewController.h"
#import "DTTwoViewController.h"

@interface DTViewController ()

@end

@implementation DTViewController

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
    
    self.view.backgroundColor = [UIColor redColor];
    UINavigationBar *bar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:@"Main"];
    [bar pushNavigationItem:item animated:NO];
    [self.view addSubview:bar];
    
    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake(120, 200, 80, 40)];
    pushBtn.backgroundColor = [UIColor grayColor];
    [pushBtn setTitle:@"Push" forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
}

- (void)push:(id)sender {
    DTTwoViewController *viewcontroller = [[DTTwoViewController alloc ]init];
    [self.navigationController pushViewController:viewcontroller animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
