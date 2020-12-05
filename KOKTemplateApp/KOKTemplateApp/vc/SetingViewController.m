//
//  SetingViewController.m
//  KOKTemplateApp
//
//  Created by KOK on 4/12/2020.
//

#import "SetingViewController.h"
#import "OpensourceSDKVC.h"
#import "YYFPSLabel.h"
@interface SetingViewController ()

/// header View
@property (weak, nonatomic) IBOutlet UIView *headView;
#pragma mark - one

/// left logo image
@property (weak, nonatomic) IBOutlet UIImageView *leftimageViewA;

/// right logo image
@property (weak, nonatomic) IBOutlet UIImageView *rightimageViewA;

/// tittle image
@property (weak, nonatomic) IBOutlet UILabel *titleLabelA;


#pragma mark - two
/// left logo image
@property (weak, nonatomic) IBOutlet UIImageView *leftimageViewB;

/// right logo image
@property (weak, nonatomic) IBOutlet UIImageView *rightimageViewB;

/// tittle image
@property (weak, nonatomic) IBOutlet UILabel *titleLabelB;

#pragma mark - three
/// left logo image
@property (weak, nonatomic) IBOutlet UIImageView *leftimageViewC;

/// right logo image
@property (weak, nonatomic) IBOutlet UIImageView *rightimageViewC;

/// tittle image
@property (weak, nonatomic) IBOutlet UILabel *titleLabelC;

#pragma mark - four
/// left logo image
@property (weak, nonatomic) IBOutlet UIImageView *leftimageViewD;

/// right logo image
@property (weak, nonatomic) IBOutlet UIImageView *rightimageViewD;

/// tittle image
@property (weak, nonatomic) IBOutlet UILabel *titleLabelD;

#pragma mark - five
/// left logo image
@property (weak, nonatomic) IBOutlet UIImageView *leftimageViewE;

/// right logo image
@property (weak, nonatomic) IBOutlet UIImageView *rightimageViewE;

/// tittle image
@property (weak, nonatomic) IBOutlet UILabel *titleLabelE;


/// fps 
@property (nonatomic, strong) YYFPSLabel *fpsLabel;
@end

@implementation SetingViewController
- (IBAction)buttonClick:(UIButton *)sender {
    switch (sender.tag) {
        case 0:{
            NSLog(@"%ld",sender.tag);
            [self.navigationController pushViewController:[[OpensourceSDKVC alloc]init] animated:YES];
        } break;
        case 1:{
            NSLog(@"%ld",sender.tag);
        }break;
        case 2:{
            NSLog(@"%ld",sender.tag);
        }break;
        case 3:{
            NSLog(@"%ld",sender.tag);
        }break;
        case 4:{
            NSLog(@"%ld",sender.tag);
        }break;
        case 5:{
            NSLog(@"%ld",sender.tag);
        }break;
        default:
            break;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _fpsLabel = [YYFPSLabel new];
    _fpsLabel.frame = CGRectMake(200, 200, 50, 30);
    [_fpsLabel sizeToFit];
    [self.view addSubview:_fpsLabel];
}

@end
