//
//  DetailViewController.m
//  Assignment3
//
//  Created by Build User on 2/4/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
    _webView = [[UIWebView alloc] initWithFrame:CGRectMake(0,0,320,548)];
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:_url]];
    [self.view addSubview:_webView];
    [_webView loadRequest:req];
    
    
}

- (void)viewWillAppear:(BOOL)animated{
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_url]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
