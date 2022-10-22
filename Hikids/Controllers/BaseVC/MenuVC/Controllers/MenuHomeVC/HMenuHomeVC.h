//
//  HMenuHomeVC.h
//  Hikids
//
//  Created by 马腾 on 2022/9/26.
//

#import "HBaseMenuVC.h"

NS_ASSUME_NONNULL_BEGIN

@interface HMenuHomeVC : HBaseMenuVC
@property (nonatomic, strong) UIView *cardView;
@property (nonatomic, strong) NSArray *nomalArray;
@property (nonatomic, strong) NSArray *exceptArray;

- (void)clickMenuAction:(UITapGestureRecognizer *)tap;
- (void)showMenuVC;
- (void)closeMenuVC;
- (void)tableReload;
@end

NS_ASSUME_NONNULL_END