//
//  JCProductService.m
//  ServiceDemo
//
//  Created by Jam Jia on 9/14/18.
//

#import "JCProductService.h"
#import "JCMediatorProtocl+ProductService.h"

#import "ProductViewController.h"

@interface JCProductService() <ProductService>

@end

@implementation JCProductService

- (UIViewController *)viewControllerForPorduct:(NSString *)productName withDetail:(NSString *)productDetail extraParams:(NSDictionary *)extraParams
{
	NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle bundleForClass:[self class]] URLForResource:@"ServiceDemo" withExtension:@"bundle"]];
	
	ProductViewController *viewController = [[ProductViewController alloc] initWithNibName:@"ProductViewController" bundle:bundle];
	viewController.product = productName;
	viewController.detail = productDetail;
	viewController.extraParams = extraParams;
	
	return viewController;
}

@end
