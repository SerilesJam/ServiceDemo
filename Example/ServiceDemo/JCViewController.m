//
//  JCViewController.m
//  ServiceDemo
//
//  Created by Jam on 09/14/2018.
//  Copyright (c) 2018 Jam. All rights reserved.
//

#import "JCViewController.h"
#import <ServiceDemo/JCMediatorProtocl+ProductService.h>

@interface JCViewController ()

@end

@implementation JCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClickProduct:(id)sender {
	
	id<ProductService> productService = [[JCMediatorProtocol sharedInstance] provideProductService];
	
	UIViewController *viewController = [productService viewControllerForPorduct:@"水果" withDetail:@"非常好吃的热带水果快来买呀，过了就没了" extraParams:@{@"banana":@"15", @"apple":@"30", @"discount":@"0.75"}];
	
	[self presentViewController:viewController animated:YES completion:nil];
	
}

@end
