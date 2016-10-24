//
//  SXTool.h
//  生学堂
//
//  Created by shuhang on 12/8/15.
//  Copyright © 2015 王磊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//#import "Account.h"

@interface SXTool : NSObject
//
////用户信息相关
//+ ( NSDictionary * ) fetchCenterInfo; //读取用户中心信息
//+ ( void ) saveCenterInfo : ( NSDictionary * ) userInfo; //存储用户中心信息
//
////+ (Account *)fetchAccount;//获取生成的Account类
//
//+ ( void ) saveLoginInfo : ( NSDictionary * ) userInfo; //存储用户登录信息
//+ ( NSDictionary * ) fetchLoginInfo; //读取用户登录信息
//
//+ ( void ) saveSubjects : ( NSDictionary * ) subjects;
//+ ( NSDictionary * ) fetchSubjects;
//
//+ ( void ) saveClassid : (NSInteger)classid;
//+ ( NSInteger ) fetchClassid;
//
//+ ( void ) clearAllUserInfo; //清空本地用户信息
//
//+ ( NSInteger ) fetchHaveClass;
//
//+ ( NSDictionary * ) fetchUserSetting; //获取用户设置
//+ ( void ) saveUserSetting :( NSDictionary * ) userSetting; //用户设置
//+ ( BOOL ) judgeShowImageOnlyWifi;
//+ ( BOOL ) judgeShowVideoOnlyWifi;
//+ ( NSInteger ) fetchNetworkStatus;
//+ ( BOOL ) isNetworkReachable;
//
//+ ( NSDictionary * ) fetchUsernameAndPassword; //获取登录名和密码
//+ ( void ) saveUsernameAndPassword : ( NSDictionary * ) info; //保存登录名和密码
//
////工具类
//+ ( BOOL ) isValidateName : ( NSString * ) name; //检查姓名是否合法
//+ ( BOOL ) isChineseName : (NSString *) name;//检查姓名是否为中文
//+ (BOOL) checkForNumber:(NSString *)number;//校验只能输入数字
//+ (BOOL) checkForNumberWithLength:(NSString *)length number:(NSString *)number;//校验只能输入n位的数字
//+ ( BOOL ) isValidateMobile : ( NSString * ) mobile; //检查电话号码是否合法
//+ ( BOOL ) isValidatePassword : ( NSString * ) password; //检查密码是否合法
//+ ( BOOL ) isSafePassword : ( NSString * ) password; //检查注册的密码是否安全
//+ ( BOOL ) isValidateIDNumber : ( NSString * ) idNumber; //检查身份证是否合法
//
//+ ( NSString * ) arrayToJsonString : ( NSArray * ) array;

+ ( CGFloat ) getRight : ( UIView * ) view;
+ ( CGFloat ) getBottom : ( UIView * ) view;

//+ ( BOOL ) judgePhotoAccess;
//+ ( BOOL ) judgeCameraAccess;
//+ ( BOOL ) judgeAudioAccess;//判断录音权限
//
//+ ( NSString * ) getNowTime : ( NSDate * ) date;
//+ ( NSString * ) getCurrentTimeString;
//+ ( NSString * ) getTimeStringForFile : ( NSString * ) type;
//+ ( NSString * ) getPathByDirectory :( NSString * ) dir FileName : ( NSString * )_fileName ofType : ( NSString * )_type;
//+ ( NSString * ) getCacheDirectory : ( NSString * ) dir;
//+ ( void ) judgeDirectoryExists : ( NSString * ) path;
//+ ( NSString * ) getVoiceDirectoryPathString;
//
//+ ( UIImage * ) getVideoThumbImage : ( NSURL * ) videoUrl; //获取视频缩略图
//
//+ ( NSInteger ) getDayInterval : ( NSString * ) time; //获取时间间隔，以天为单位，时间格式：YYYY-MM-DD
//
//+ ( BOOL ) isPureInt : ( NSString * ) string; //判断是否为纯数字
//
//+ ( UIImage * ) getCompressionImage : ( UIImage * ) originalImage; //获取压缩图片
//
//+ ( NSMutableAttributedString * ) getModifyString:(NSString *)value;
//
//+ (NSInteger) getFileSize:(NSString*) path;//获取文件大小


@end
