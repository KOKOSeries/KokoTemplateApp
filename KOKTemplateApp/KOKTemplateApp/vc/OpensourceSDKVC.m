//
//  OpensourceSDKVC.m
//  KOKTemplateApp
//
//  Created by KOK on 4/12/2020.
//

#import "OpensourceSDKVC.h"

@interface OpensourceSDKVC ()

@end

@implementation OpensourceSDKVC

- (void)viewDidLoad {
    [super viewDidLoad];
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        // 处理耗时操作的代码块...
//       
//        //通知主线程刷新
////        dispatch_async(dispatch_get_main_queue(), ^{
////            //回调或者说是通知主线程刷新，
////        });
//          
//    });
//    dispatch_queue_t queue = dispatch_queue_create("com.test.gcg.queue", DISPATCH_QUEUE_CONCURRENT);
//
//       dispatch_async(queue, ^{
////
////           NSLog(@"start task 1");
////
////           [NSThread sleepForTimeInterval:2];
////
////           NSLog(@"end task 1");
//           [self getDataFromPlist];
//
//       });

//        dispatch_async(queue, ^{
//
//           NSLog(@"start task 2");
//
//           [NSThread sleepForTimeInterval:2];
//
//          NSLog(@"end task 2");
//
//      });
//
//       dispatch_async(queue, ^{
//
//          NSLog(@"start task 3");
//
//           [NSThread sleepForTimeInterval:2];
//
//           NSLog(@"end task 3");
//
//     });
}
- (NSMutableDictionary * )getDataFromPlist{
    NSString *plistPath = [[NSBundle mainBundle]pathForResource:@"opensourceSDKdata" ofType:@"plist"];
    NSMutableDictionary *dataDic = [[NSMutableDictionary alloc]initWithContentsOfFile:plistPath];
    NSLog(@"%@",dataDic);//直接打印数据
    return dataDic;
}
@end
