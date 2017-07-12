//
// __    ______  ______      __     ___    _
//   /  __)    /  \    (_    _) |    \  |  |
//  |  /      /    \     |  |   |  |\ \ |  |
//  | |      /  ()  \    |  |   |  | \ \|  |
//  |  \__  |   __   |  _|  |_  |  |  \    |
//  _\    )_|  (__)  |_(      )_|  |___\   |_
//
//  CLCollectionViewDataSource.h
//  SimpleProject
//
//  Created by Cain on 2017/7/12.
//  Copyright © 2017年 Cain Luo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLCollectionViewBaseModel.h"

@interface CLCollectionViewDataSource : NSObject <UICollectionViewDataSource>

@property (nonatomic, strong, readonly) CLCollectionViewBaseModel *cl_collectionViewBaseModel;

- (instancetype)initCollectionViewDataSourceWithViewModel:(CLCollectionViewBaseModel *)viewModel;

@end
