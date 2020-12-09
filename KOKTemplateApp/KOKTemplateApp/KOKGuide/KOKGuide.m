//
//  KOKGuide.m
//  KOKTemplateApp
//
//  Created by KOK on 8/12/2020.
//

#import "KOKGuide.h"
#import "KOKGuideVC.h"
@interface  KOKGuide()<KOKGuideVCDelegate>
@property(nonatomic,strong)UIWindow * window;

@end

@implementation KOKGuide
static KOKGuide *instancdGuide = nil;
+(KOKGuide *)share{
    @synchronized (self) {
        if (!instancdGuide) {
            instancdGuide = [[KOKGuide alloc] init];
        }
    }
    return instancdGuide;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupLaunchGuide];
    }
    return self;
}
-(void)scene:(UIWindowScene *)scene API_AVAILABLE(ios(13.0)){
    _window.windowScene = scene;
}
#pragma mark - add
-(void)setupLaunchGuide{
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    #pragma mark - 加载 Gif ｜ 加载 图片
    KOKGuideVC *vc = [KOKGuideVC new];
    vc.mkDelegate = self;
//    vc.view.backgroundColor = [UIColor clearColor];
    window.rootViewController = vc;
    window.rootViewController.view.userInteractionEnabled = YES;
    window.windowLevel = UIWindowLevelStatusBar + 1;
    window.hidden = NO;
    window.alpha = 1;
    _window = window;
}
-(void)remove{
    if(_window){
        [_window.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            REMOVE_FROM_SUPERVIEW_SAFE(obj)
            [obj removeFromSuperview];
            obj = nil;
        }];
        _window.hidden = YES;
        _window = nil;
    }
}
- (void)didClickCancel{
    [self remove];
}
@end
