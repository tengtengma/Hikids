//
//  BWAddTaskResp.h
//  Hikids
//
//  Created by 马腾 on 2022/10/13.
//

#import "BWBaseResp.h"

NS_ASSUME_NONNULL_BEGIN

@interface BWAddTaskResp : BWBaseResp
- (id)initWithJSONDictionary:(NSDictionary *)jsonDic;

@end

NS_ASSUME_NONNULL_END
