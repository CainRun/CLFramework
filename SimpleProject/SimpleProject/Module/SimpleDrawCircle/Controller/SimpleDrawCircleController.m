//
//  SimpleDrawCircleController.m

//
//  Created by Cain on 2017/7/28.
//  Copyright © 2017年 Cain Luo. All rights reserved.
//

#import "SimpleDrawCircleController.h"

@interface SimpleDrawCircleController ()

@end

@implementation SimpleDrawCircleController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = NSStringFromClass([self class]);
    self.view.backgroundColor = [UIColor grayColor];
    
    NSString *urlString = @"http://cc.cocimg.com/api/uploads/20150803/1438567345483993.jpg";

    UIImageView *simpleProjectImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    
//    simpleProjectImageView.image = [[UIImage imageNamed:@"1"] cl_cornerImageWithRadius:100 / 2];
    
    [simpleProjectImageView sd_setImageWithURL:[NSURL URLWithString:urlString]
                                     completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                                         
                                         [simpleProjectImageView.image cl_asyncCornerImageWithSize:simpleProjectImageView.frame.size
                                                                                         fillColor:nil
                                                                                            opaque:NO
                                                                                        completion:^(UIImage *image) {
                                                                                            
                                                                                            simpleProjectImageView.image = image;
                                                                                        }];
                                     }];
    
    [self.view addSubview:simpleProjectImageView];
}

@end
