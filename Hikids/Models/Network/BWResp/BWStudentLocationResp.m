//
//  BWStudentLocationResp.m
//  Hikids
//
//  Created by 马腾 on 2022/10/7.
//

#import "BWStudentLocationResp.h"
#import "HStudent.h"

@implementation BWStudentLocationResp
- (id)initWithJSONDictionary:(NSDictionary *)jsonDic
{
    if (self = [super initWithJSONDictionary:jsonDic]) {
        
        NSMutableArray *exceptionKids = [[NSMutableArray alloc] init];
        NSDictionary *dic = [jsonDic safeObjectForKey:@"item"];
        for (NSDictionary *exceptDic in [dic safeObjectForKey:@"exceptionKids"]) {
            HStudent *model = [HStudent mj_objectWithKeyValues:exceptDic];
            model.deviceInfo = [HStudentDeviceInfo mj_objectWithKeyValues:[exceptDic safeObjectForKey:@"data"]];
            model.sId = [exceptDic safeObjectForKey:@"id"];
            [exceptionKids addObject:model];
            
            NSLog(@"data  %@",[exceptDic safeObjectForKey:@"data"]);

        }
        
        NSMutableArray *nomalKids = [[NSMutableArray alloc] init];
        for (NSDictionary *nomalDic in [dic safeObjectForKey:@"normalKids"]) {
            HStudent *model1 = [HStudent mj_objectWithKeyValues:nomalDic];
            model1.deviceInfo = [HStudentDeviceInfo mj_objectWithKeyValues:[nomalDic safeObjectForKey:@"data"]];
            model1.sId = [nomalDic safeObjectForKey:@"id"];
            [nomalKids addObject:model1];
        }

        self.normalKids = nomalKids;
        self.exceptionKids = exceptionKids;
        self.isSafe = [[dic safeObjectForKey:@"isSafe"] boolValue];
        self.kinFence = [dic safeObjectForKey:@"kinFence"];
        self.desFence = [dic safeObjectForKey:@"desFence"];
        self.deviceLastUpload = [[dic safeObjectForKey:@"deviceLastUpload"] floatValue];
        self.changeStatus = [dic safeObjectForKey:@"changeStatus"];

    }
    return self;
}
@end
