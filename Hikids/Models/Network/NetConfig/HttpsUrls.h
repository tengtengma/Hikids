//
//  HttpsUrls.h
//  Music
//
//  Created by 马腾 on 2018/12/12.
//  Copyright © 2018 beiwaionline. All rights reserved.
//

#ifndef HttpsUrls_h
#define HttpsUrls_h

//#define BaseURL                     @"https://open.ebeiwai.com/zhiketang"                         //正式服务器
#define BaseURL                      @"http://4vhasa.natappfree.cc"                    //ceshi服务器
//#define BaseURL                     @"http://13.115.114.98:8089"


#define Login_URL                  @"/v1/login"                                         //登录接口
#define CheckToken_URL             @"/v1/system/user/list"                              //检测token
#define ffurl                      @"/v1/system/user/2"
#define GetKindergartenURL         @"/v1/business/hikidsTask/getKindergarten"           //获取园区围栏信息
#define GetDestinationsURL         @"/v1/business/kindergarten/destinations"            //获取目的地列表
#define GetStudentsURL             @"/v1/business/kids/getAllKids"                      //获取班级孩子列表
#define GetAssistantURL            @"/v1/business/assistant/getall"                     //获取助教列表
#define DestinationInfoURL         @"/v1/business/destination/getById"                  //目的地信息
#define StudentsLocationURL        @"/v1/business/hikidsTask/uploadLocation"            //查看学生状态
#define TaskAddURL                 @"/v1/business/hikidsTask/taskAdd"                   //创建任务
#define GetTaskURL                 @"/v1/business/hikidsTask/getNowTask"                //获取当前任务信息
#define ChangeTaskStateURL         @"/v1/business/hikidsTask/changeStatus"              //修改任务状态
#define GetSleepTaskURL            @"/v1/business/sleepTask/getTaskInfo"                 //获取午睡任务接口

#endif /* HttpsUrls_h */



