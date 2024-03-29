//
//  BWGetSleepTaskResp.m
//  Hikids
//
//  Created by 马腾 on 2023/1/11.
//

#import "BWGetSleepTaskResp.h"

@implementation BWGetSleepTaskResp
- (id)initWithJSONDictionary:(NSDictionary *)jsonDic
{
    
    if (self = [super initWithJSONDictionary:jsonDic]) {
        
        NSDictionary *dic = [jsonDic safeObjectForKey:@"item"];
        if (dic) {
            self.item = dic;
        }
    }
    return self;
}
@end
