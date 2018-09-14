//
//  ProductViewController.m
//  ServiceDemo
//
//  Created by Jam Jia on 9/14/18.
//

#import "ProductViewController.h"

@interface ProductViewController ()

@property (weak, nonatomic) IBOutlet UILabel *productLabel;
@property (weak, nonatomic) IBOutlet UILabel *productDetailLabel;

@end

@implementation ProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
	self.productLabel.text = self.product;
	self.productDetailLabel.text = self.detail;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onClickExtraParams:(id)sender {
	NSLog(@"%@", self.extraParams);
}

- (IBAction)onDissmiss:(id)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}
@end
