//
//  HTimer.h
//  Hikids
//
//  Created by 马腾 on 2022/10/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HTime : NSObject
@property (nonatomic, assign) NSInteger tId;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) BOOL isSelected;
@end

NS_ASSUME_NONNULL_END
