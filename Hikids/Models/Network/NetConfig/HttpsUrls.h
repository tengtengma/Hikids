//
//  HttpsUrls.h
//  Music
//
//  Created by 马腾 on 2018/12/12.
//  Copyright © 2018 beiwaionline. All rights reserved.
//

#ifndef HttpsUrls_h
#define HttpsUrls_h

#define BaseURL                       @"https://api.hikids.blog"                      //正式
//#define BaseURL                      @"http://api-test.hikids.blog"                    //服务器生产环境

//#define BaseURL                     @"http://b73irr.natappfree.cc"                  //云鹏电脑测试
//#define BaseURL                     @"http://api.hikids.blog:8089"                //午睡生产环境


#define LoginURL                   @"/v1/login"                                         //登录接口
#define CheckTokenURL              @"/v1/system/user/list"                              //检测token
#define ffurl                      @"/v1/system/user/2"
#define GetKindergartenURL         @"/v1/business/hikidsTask/getKindergarten"           //获取园区围栏信息
#define GetDestinationsURL         @"/v1/business/kindergarten/destinations"            //获取目的地列表
#define GetStudentsURL             @"/v1/business/kids/getAllKids"                      //获取班级孩子列表
#define GetAssistantURL            @"/v1/business/assistant/getall"                     //获取助教列表
#define DestinationInfoURL         @"/v1/business/destination"                          //目的地信息
#define StudentsLocationURL        @"/v1/business/hikidsTask/uploadLocation"            //查看学生状态
#define TaskAddURL                 @"/v1/business/hikidsTask/taskAdd"                   //创建任务
#define GetTaskURL                 @"/v1/business/hikidsTask/getNowTask"                //获取当前任务信息
#define ChangeTaskStateURL         @"/v1/business/hikidsTask/changeStatus"              //修改任务状态
#define GetSleepTaskURL            @"/v1/business/sleepTask/getTaskInfo"                //获取午睡任务接口
#define GetSleepReportURL          @"/v1/business/sleepTask/getSleepTaskReportInfo"     //获取午睡报告接口
#define GetTravelReportURL         @"/v1/business/report/travelreport"                  //获取散步报告接口
#define GetTaskWithCalendarURL     @"/v1/business/hikidsTask/getTasks"                  //根据时间获取周报告
#define GetMonthCalendarURL        @"/v1/business/hikidsTask/getMonthTasks"             //根据获取一个月的报告
#define GetPDFURL                  @"/v1/business/hikidsTask/getSleepReport"            //获取pdf地址
#define GetKidInfoURL              @"/v1/business/kids"                                 //获取小孩详情
#define GetInfomationURL           @"/v1/business/hikidsTask/getCorrentTaskInfo"        //获取情报
#define SetRingNumberURL           @"/v1/business/teacher/setRingNumber"                //设置警报铃声
#define GetWarnStrategyURL         @"/v1/business/hikidsClass/warnStrategy"             //获取报警灵敏度
#define SetWarnStrategyURL         @"/v1/business/hikidsClass/warnStrategy"             //设置报警灵敏度
#define StopWarnURL                @"/v1/business/hikidsTask/stopWarn"                  //手动停止报警
#define ChangeWalkWarnURL          @"/v1/business/hikidsTask/warnStrategy"              //活动中修改报警
#define HelpURL                    @"https://yohaku-bunka.notion.site/Q-A-66b097ecd75f4103938c30238525e677?pvs=4" //帮助页面
#define ChangeModeURL              @"/v1/business/hikidsTask/changeMode"                //切换乘车模式Mode

#endif /* HttpsUrls_h */



