//
//  JCMediatorProtocl+ProductService.h
//  ServiceDemo
//
//  Created by Jam Jia on 9/14/18.
//

#import <JCToolKit/JCMediatorProtocl.h>

@protocol ProductService

- (UIViewController *)viewControllerForPorduct:(NSString *)productName withDetail:(NSString *)productDetail extraParams:(NSDictionary *)extraParams;

@end

@interface JCMediatorProtocl (ProductService)

- (id<ProductService>)provideProductService;

@end
