//
//  BWBaseResp.h
//  bwclassgoverment
//
//  Created by 马腾 on 2018/1/11.
//  Copyright © 2018年 beiwaionline. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum _ResponseCode
{
    ResponseCode_Faild = 0,
    ResponseCode_Unauthorized = 401,
    ResponseCode_Success = 200,
}ResponseCode;

@interface BWBaseResp : NSObject
@property (nonatomic, assign) ResponseCode errorCode;
@property (nonatomic, strong) NSString * errorMessage;
@property (nonatomic, strong) NSDictionary *item;
@property (nonatomic, strong) NSArray *itemList;

- (id)initWithJSONDictionary:(NSDictionary*)jsonDic;
@end
