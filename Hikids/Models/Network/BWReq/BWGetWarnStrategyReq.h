//
//  BWGetWarnStrategyReq.h
//  Hikids
//
//  Created by 马腾 on 2024/4/22.
//

#import "BWBaseReq.h"

NS_ASSUME_NONNULL_BEGIN

@interface BWGetWarnStrategyReq : BWBaseReq
- (NSURL *)url;

- (NSMutableDictionary *)getRequestParametersDictionary;
@end

NS_ASSUME_NONNULL_END
