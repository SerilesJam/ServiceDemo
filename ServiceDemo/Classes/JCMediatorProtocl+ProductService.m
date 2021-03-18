//
//  JCMediatorProtocl+ProductService.m
//  ServiceDemo
//
//  Created by Jam Jia on 9/14/18.
//

#import "JCMediatorProtocl+ProductService.h"

NSString * const kJCMediatorProductService = @"ProductService";

@implementation JCMediatorProtocol (ProductService)

- (id<ProductService>)provideProductService
{
	return [self getServiceProvide:kJCMediatorProductService withProtocl:@protocol(ProductService) shouldCacheService:YES];
}

@end
