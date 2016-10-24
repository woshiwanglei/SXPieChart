//
//  SXTool.m
//  生学堂
//
//  Created by shuhang on 12/8/15.
//  Copyright © 2015 王磊. All rights reserved.
//

#import "SXTool.h"
//#import <AssetsLibrary/AssetsLibrary.h>
//#import <AVFoundation/AVFoundation.h>
//#import "Reachability.h"

//static NSDictionary * LoginInfo;

@implementation SXTool

//+ ( void ) saveLoginInfo:(NSDictionary *)userInfo
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    [userDefaults setObject:userInfo forKey:@"userLoginInfo"];
//    [userDefaults setObject:userInfo[ @"account" ][ @"id" ] forKey:@"account_id"];
//    [userDefaults synchronize];
//}
//
//+ ( NSDictionary * ) fetchLoginInfo
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    return [userDefaults objectForKey:@"userLoginInfo"];
//}
//
//+ ( NSDictionary * ) fetchCenterInfo
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    return [userDefaults objectForKey:@"userCenterInfo"];
//}
//
//+ (Account *)fetchAccount
//{
//    Account *account = [[Account alloc] initWithDictionary:[self fetchCenterInfo]];
//    return account;
//}
//
//+ ( void ) saveCenterInfo:(NSDictionary *)userInfo
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    [userDefaults setObject:userInfo forKey:@"userCenterInfo"];
//    [userDefaults synchronize];
//}
//
//+ ( void ) saveSubjects : ( NSDictionary * ) subjects
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    [userDefaults setObject:subjects forKey:@"subjects"];
//    [userDefaults synchronize];
//}
//
//+ ( NSDictionary * ) fetchSubjects
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    return [userDefaults objectForKey:@"subjects"];
//}
//
//+ (NSInteger)fetchHaveClass
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    return [[userDefaults objectForKey:@"haveClass"] integerValue];
//}
//
//+ (void)saveClassid:(NSInteger)classid
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    [userDefaults setObject:@(classid) forKey:@"classid"];
//    [userDefaults synchronize];
//}
//+ (NSInteger)fetchClassid
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    NSInteger classid = [[userDefaults objectForKey:@"classid"] integerValue];
//    return classid;
//}
//
//+ ( void ) clearAllUserInfo //清空本地用户信息
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    [userDefaults removeObjectForKey:@"userLoginInfo"];
//    [userDefaults removeObjectForKey:@"userCenterInfo"];
//    [userDefaults removeObjectForKey:@"subjects"];
//    [userDefaults removeObjectForKey:@"username"];
//    [userDefaults removeObjectForKey:@"password"];
//    [userDefaults removeObjectForKey:@"idNum"];
//    [userDefaults removeObjectForKey:@"haveClass"];
//    [userDefaults removeObjectForKey:@"classid"];
//    [userDefaults synchronize];
//}
//
//+ ( NSDictionary * ) fetchUserSetting
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    return [userDefaults objectForKey:@"userSetting"];
//}
//
//+ ( void ) saveUserSetting:(NSDictionary *)userSetting
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    [userDefaults setObject:userSetting forKey:@"userSetting"];
//    [userDefaults synchronize];
//}
//
//+ ( NSDictionary * ) fetchUsernameAndPassword //获取登录名和密码
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    if( [userDefaults objectForKey:@"username"] && [userDefaults objectForKey:@"password"] )
//    {
//        return @{
//                 @"username" : [userDefaults objectForKey:@"username"],
//                 @"password" : [userDefaults objectForKey:@"password"]
//                 };
//    }
//    return nil;
//}
//
//+ ( void ) saveUsernameAndPassword : ( NSDictionary * ) info //保存登录名和密码
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    [userDefaults setObject:info[ @"username" ] forKey:@"username"];
//    [userDefaults setObject:info[ @"password" ] forKey:@"password"];
//    [userDefaults synchronize];
//}
//
//+ ( BOOL ) judgeShowImageOnlyWifi
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    NSDictionary * userSetting = [userDefaults objectForKey:@"userSetting"];
//    return [userSetting[ @"imageWifiOnly" ] boolValue];
//}
//
//+ ( BOOL ) judgeShowVideoOnlyWifi
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    NSDictionary * userSetting = [userDefaults objectForKey:@"userSetting"];
//    return [userSetting[ @"videoWifiOnly" ] boolValue];
//}
//
//+ ( NSInteger ) fetchNetworkStatus
//{
//    Reachability * reachability  = [Reachability reachabilityWithHostName:@"www.baidu.com"];
//    NetworkStatus internetStatus = [reachability currentReachabilityStatus];
//    switch( internetStatus )
//    {
//        case ReachableViaWiFi:
//        {
//            return 0;
//        }
//        case ReachableViaWWAN:
//        {
//            return 1;
//        }
//        case NotReachable:
//        {
//            return 2;
//        }
//        default:
//            break;
//    }
//    
//    return -1;
//}
//
//+ ( BOOL ) isNetworkReachable
//{
//    // Create zero addy
//    struct sockaddr_in zeroAddress;
//    bzero(&zeroAddress, sizeof(zeroAddress));
//    zeroAddress.sin_len = sizeof(zeroAddress);
//    zeroAddress.sin_family = AF_INET;
//    
//    // Recover reachability flags
//    SCNetworkReachabilityRef defaultRouteReachability = SCNetworkReachabilityCreateWithAddress(NULL, (struct sockaddr *)&zeroAddress);
//    SCNetworkReachabilityFlags flags;
//    
//    BOOL didRetrieveFlags = SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags);
//    CFRelease(defaultRouteReachability);
//    
//    if (!didRetrieveFlags)
//    {
//        return NO;
//    }
//    
//    BOOL isReachable = flags & kSCNetworkFlagsReachable;
//    BOOL needsConnection = flags & kSCNetworkFlagsConnectionRequired;
//    return (isReachable && !needsConnection) ? YES : NO;
//}
//
//+ ( BOOL ) isValidateMobile : ( NSString * ) mobile //检查电话号码是否合法
//{
//    //手机号以13， 15，17,18开头，八个 \d 数字字符
//    NSString * phoneRegex = @"^((13[0-9])|(15[^4,\\D])|(17[0-9])|(18[0,0-9]))\\d{8}$";
//    NSPredicate * phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
//    return [phoneTest evaluateWithObject:mobile];
//}
//
//+ ( BOOL ) isValidateName : ( NSString * ) name //检查姓名是否合法
//{
//    NSString * nameRegex = @"^[a-zA-Z一-龥]{1,20}";
//    NSPredicate * nameTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", nameRegex];
//    return [nameTest evaluateWithObject:name];
//}
//+ ( BOOL ) isChineseName : ( NSString * ) name //检查姓名是否合法
//{
//    NSString * nameRegex = @"^[一-龥]{1,20}";
//    NSPredicate * nameTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", nameRegex];
//    return [nameTest evaluateWithObject:name];
//}
//#pragma mark - 只能输入数字
//+ (BOOL) checkForNumber:(NSString *)number{
//    NSString *regEx = @"^[0-9]*$";
//    return [self baseCheckForRegEx:regEx data:number];
//}
//
//#pragma mark - 校验只能输入n位的数字
//+ (BOOL) checkForNumberWithLength:(NSString *)length number:(NSString *)number{
//    NSString *regEx = [NSString stringWithFormat:@"^\\d{%@}$", length];
//    return [self baseCheckForRegEx:regEx data:number];
//}
//
//+ ( BOOL ) isValidatePassword : ( NSString * ) password //检查密码是否合法
//{
//    NSString * passwordRegex = @"^[a-zA-Z0-9]{6,20}+$";
//    NSPredicate * passwordTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", passwordRegex];
//    return [passwordTest evaluateWithObject:password];
//}
//+ ( BOOL ) isSafePassword : ( NSString * ) password //检查密码是否安全
//{
//    NSString * passwordRegex = @"(?![^a-zA-Z0-9]+$)(?![^a-zA-Z/D]+$)(?![^0-9/D]+$).{6,20}$";
//    NSPredicate * passwordTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", passwordRegex];
//    return [passwordTest evaluateWithObject:password];
//}
//
//+ ( BOOL ) isValidateIDNumber : ( NSString * ) idNumber //检查身份证是否合法
//{
////    if( idNumber.length == 18 ) return YES;
////    return NO;
//    NSString * idNumberRegex = @"(^[0-9]{15}$)|([0-9]{17}([0-9]|X)$)";
//    NSPredicate * idNumberTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", idNumberRegex];
//    return [idNumberTest evaluateWithObject:idNumber];
//}

+ ( CGFloat ) getRight : ( UIView * ) view
{
    return view.frame.origin.x + view.frame.size.width;
}

+ ( CGFloat ) getBottom : ( UIView * ) view
{
    return view.frame.origin.y + view.frame.size.height;
}

//+ ( BOOL ) judgePhotoAccess
//{
//    ALAuthorizationStatus author = [ALAssetsLibrary authorizationStatus];
//    if( author == ALAuthorizationStatusNotDetermined || author == ALAuthorizationStatusAuthorized )
//    {
//        return YES;
//    }
//    return NO;
//}
//
//+ ( BOOL ) judgeCameraAccess
//{
//    AVAuthorizationStatus author = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
//    if( author == AVAuthorizationStatusNotDetermined || author == AVAuthorizationStatusAuthorized )
//    {
//        return YES;
//    }
//    return NO;
//}
//+ ( BOOL ) judgeAudioAccess//判断录音权限
//{
//    AVAuthorizationStatus author = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeAudio];
//    if( author == AVAuthorizationStatusNotDetermined || author == AVAuthorizationStatusAuthorized )
//    {
//        return YES;
//    }
//    return NO;
//}
//
//+ ( UIImage * ) getVideoThumbImage:(NSURL *)videoUrl
//{
//    AVURLAsset *asset = [[AVURLAsset alloc] initWithURL:videoUrl options:nil];
//    AVAssetImageGenerator *gen = [[AVAssetImageGenerator alloc] initWithAsset:asset];
//    gen.appliesPreferredTrackTransform = YES;
//    CMTime time = CMTimeMakeWithSeconds(0.0, 600);
//    NSError *error = nil;
//    CMTime actualTime;
//    CGImageRef image = [gen copyCGImageAtTime:time actualTime:&actualTime error:&error];
//    UIImage *thumb = [[UIImage alloc] initWithCGImage:image];
//    CGImageRelease(image);
//    
//    return thumb;
//}
//
//+ ( NSString * ) getCurrentTimeString
//{
//    NSDateFormatter * dateformat=[[NSDateFormatter alloc] init];
//    [dateformat setDateFormat:@"yyyyMMddHHmmss"];
//    return [dateformat stringFromDate:[NSDate date]];
//}
//
//+ ( NSString * ) getTimeStringForFile : ( NSString * ) type
//{
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    NSDateFormatter * dateformat = [[NSDateFormatter alloc] init];
//    [dateformat setDateFormat:@"yyyyMMddHHmmssSSS"];
//    return [NSString stringWithFormat:@"%@_%@.%@", [userDefaults objectForKey:@"account_id"], [dateformat stringFromDate:[NSDate date]], type];
//}
//
//+ ( NSString * ) getNowTime : ( NSDate * ) date
//{
//    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
//    [formatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    return [formatter stringFromDate:date];
//}
//
///**
// 生成文件路径
// @param _fileName 文件名
// @param _type 文件类型
// @returns 文件路径
// */
//+ (NSString*)getPathByDirectory:(NSString *)dir FileName:(NSString *)_fileName ofType:(NSString *)_type
//{
//    NSString* fileDirectory = [[[SXTool getCacheDirectory:dir] stringByAppendingPathComponent:_fileName]stringByAppendingPathExtension:_type];
//    return fileDirectory;
//}
///**
// 获取缓存路径
// @returns 缓存路径
// */
//+ (NSString*)getCacheDirectory:(NSString *)dir
//{
//    return [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:dir];
//}
//
//+ ( void ) judgeDirectoryExists : ( NSString * ) path
//{
//    if( ![[NSFileManager defaultManager] fileExistsAtPath:path isDirectory:NO] )
//    {
//        [[NSFileManager defaultManager] createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
//    }
//}
//+ ( NSString * ) getVoiceDirectoryPathString
//{
//    return [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"voice"];
//}
//
//+ ( NSInteger ) getDayInterval:(NSString *)time
//{
//    NSDateFormatter * format = [NSDateFormatter new];
//    [format setDateFormat:@"yyyy-MM-dd"];
//    NSDate * timeDate = [format dateFromString:time];
//    NSTimeInterval timeInterval = [timeDate timeIntervalSinceNow];
//    timeInterval = - timeInterval;
//    
//    NSInteger day = timeInterval / 60 / 60 / 24;
//    return day;
//}
//
//+ ( BOOL ) isPureInt : ( NSString * ) string
//{
//    NSScanner * scan = [NSScanner scannerWithString:string];
//    int val;
//    return [scan scanInt:&val] && [scan isAtEnd];
//}
//
//+ ( UIImage * ) getCompressionImage : ( UIImage * ) originalImage
//{
//    NSData * data = UIImageJPEGRepresentation( originalImage, 0.1 );
//    UIImage * image = [UIImage imageWithData:data];
//    originalImage = nil;
//    data = nil;
//    return image;
//}
//
//+ ( NSString * ) arrayToJsonString:(NSArray *)array
//{
//    NSError * error = nil;
//    NSData * classData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
//    return [[NSString alloc] initWithData:classData encoding:NSUTF8StringEncoding];
//}
//
//+ ( NSMutableAttributedString * ) getModifyString:(NSString *)value
//{
//    if( !value || ( NSNull * ) value == [NSNull null] ) value = @"";
//    NSMutableAttributedString * attributedString1 = [[NSMutableAttributedString alloc] initWithString:value];
//    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
//    [paragraphStyle1 setLineSpacing:5];
//    [attributedString1 addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [value length])];
//    return attributedString1;
//}
//
//
//#pragma mark - 获取文件大小
//+ (NSInteger) getFileSize:(NSString*) path{
//    NSFileManager * filemanager = [[NSFileManager alloc]init];
//    if([filemanager fileExistsAtPath:path]){
//        NSDictionary * attributes = [filemanager attributesOfItemAtPath:path error:nil];
//        NSNumber *theFileSize;
//        if ( (theFileSize = [attributes objectForKey:NSFileSize]) )
//            return  [theFileSize intValue];
//        else
//            return -1;
//    }
//    else{
//        return -1;
//    }
//}
//
//#pragma mark - 私有方法
///**
// *  基本的验证方法
// *
// *  @param regEx 校验格式
// *  @param data  要校验的数据
// *
// *  @return YES:成功 NO:失败
// */
//+(BOOL)baseCheckForRegEx:(NSString *)regEx data:(NSString *)data{
//    
//    NSPredicate *card = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regEx];
//    if (data.length == 0) {
//        return NO;
//    }
//    if (([card evaluateWithObject:data])) {
//        return YES;
//    }
//    return NO;
//}

@end
