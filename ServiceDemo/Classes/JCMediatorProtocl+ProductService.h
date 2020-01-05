//
//  JCMediatorProtocl+ProductService.h
//  ServiceDemo
//
//  Created by Jam Jia on 9/14/18.
//

#import <UIKit/UIKit.h>
#import <JCToolKit/JCMediatorProtocol.h>

@protocol ProductService

- (UIViewController *)viewControllerForPorduct:(NSString *)productName withDetail:(NSString *)productDetail extraParams:(NSDictionary *)extraParams;

@end

@interface JCMediatorProtocol (ProductService)

- (id<ProductService>)provideProductService;

@end
