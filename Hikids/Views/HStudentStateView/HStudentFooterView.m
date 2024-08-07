//
//  HStudentFooterView.m
//  Hikids
//
//  Created by 马腾 on 2022/10/22.
//

#import "HStudentFooterView.h"
#import "HConfirmSafeButton.h"

@interface HStudentFooterView()
@property (nonatomic, strong) UIImageView *headerView;
@property (nonatomic, strong) UIImageView *batteryImageView;
@property (nonatomic, strong) UIImageView *wifiImageView;
@property (nonatomic, strong) UIImageView *gpsImageView;
@property (nonatomic, strong) UIButton *backupBtn;
@property (nonatomic, strong) UIButton *clockBtn;
@property (nonatomic, strong) HConfirmSafeButton *confirmBtn;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *distanceLabel;

@property (nonatomic, strong) UIView *leftLineView;
@property (nonatomic, strong) UIView *rightLineView;
@property (nonatomic, strong) UIView *bottomLineView;
@property (nonatomic, strong) UIImageView *lastCellBottomView;
@property (nonatomic, strong) HStudent *student;


@end

@implementation HStudentFooterView

- (instancetype)init
{
    if (self = [super init]) {
        
        [self addSubview:self.headerView];
        [self.headerView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self);
            make.left.equalTo(self).offset(PAdaptation_x(10));
            make.width.mas_equalTo([BWTools getIsIpad] ? 58 : PAdaptation_x(58));
            make.height.mas_equalTo([BWTools getIsIpad] ? 58 : PAaptation_y(58));
        }];
        
        [self addSubview:self.titleLabel];
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.headerView);
            make.left.equalTo(self.headerView.mas_right).offset(PAdaptation_x(12));
        }];
        
        [self addSubview:self.batteryImageView];
        [self.batteryImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.titleLabel);
            make.left.equalTo(self.titleLabel.mas_right).offset(PAdaptation_x(11));
            make.width.mas_equalTo(PAdaptation_x(30));
            make.height.mas_equalTo(PAaptation_y(30));
        }];
        
        [self addSubview:self.wifiImageView];
        [self.wifiImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.titleLabel);
            make.left.equalTo(self.batteryImageView.mas_right).offset(PAdaptation_x(11));
            make.width.mas_equalTo(PAdaptation_x(30));
            make.height.mas_equalTo(PAaptation_y(30));
        }];
        
        [self addSubview:self.gpsImageView];
        [self.gpsImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.titleLabel.mas_bottom).offset(PAaptation_y(2));
            make.left.equalTo(self.headerView.mas_right).offset(PAdaptation_x(10));
            make.width.mas_equalTo([BWTools getIsIpad] ? 30 : PAdaptation_x(30));
            make.height.mas_equalTo([BWTools getIsIpad] ? 30 : PAaptation_y(30));
        }];
        
        [self addSubview:self.distanceLabel];
        [self.distanceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.gpsImageView);
            make.left.equalTo(self.gpsImageView.mas_right).offset(PAdaptation_x(6));
        }];
        
        [self addSubview:self.confirmBtn];
        [self.confirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self);
            make.right.equalTo(self.mas_right).offset(-PAdaptation_x(6));
            make.width.mas_equalTo(PAdaptation_x(108));
            make.height.mas_equalTo(PAaptation_y(35));
        }];
        
//        [self addSubview:self.clockBtn];
//        [self.clockBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerY.equalTo(self.headerView);
//            make.right.equalTo(self.mas_right).offset(-PAdaptation_x(31));
//            make.width.mas_equalTo(PAdaptation_x(18));
//            make.height.mas_equalTo(PAaptation_y(20));
//        }];
//
//        [self addSubview:self.backupBtn];
//        [self.backupBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerY.equalTo(self.headerView);
//            make.right.equalTo(self.clockBtn.mas_left).offset(-PAdaptation_x(27));
//            make.width.mas_equalTo(PAdaptation_x(15));
//            make.height.mas_equalTo(PAaptation_y(20));
//        }];
        
        
        
    }
    return self;
}
- (void)setNomalBorder
{
    [self addSubview:self.leftLineView];
    [self.leftLineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.left.equalTo(self);
        make.width.mas_equalTo(2);
        make.height.equalTo(self);
    }];
    
    [self addSubview:self.rightLineView];
    [self.rightLineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.right.equalTo(self.mas_right);
        make.width.mas_equalTo(2);
        make.height.equalTo(self);
    }];
    
    [self addSubview:self.bottomLineView];
    [self.bottomLineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_bottom).offset(-2);
        make.left.equalTo(self);
        make.right.equalTo(self.mas_right);
        make.height.mas_equalTo(2);
    }];
}
- (void)setLastCellBorder
{
    [self addSubview:self.lastCellBottomView];
    [self sendSubviewToBack:self.lastCellBottomView];
    [self.lastCellBottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}
- (void)setupWithModel:(HStudent *)model;
{
    self.student = model;
    
    [self.headerView sd_setImageWithURL:[NSURL URLWithString:model.avatar]];
    [self.batteryImageView setImage:[self batteryLevelImageWithString:model.deviceInfo.batteryLevel]];
    [self.wifiImageView setImage:[UIImage imageNamed:@"wifi.png"]];
    self.titleLabel.text = model.name;
    
    self.confirmBtn.student = model;
    
}
- (UIImage *)batteryLevelImageWithString:(NSString *)rate
{
    UIImage *image = nil;
    
    if(rate.doubleValue >= 0 && rate.doubleValue <= 20.0){
        image = [UIImage imageNamed:@"battery_empty.png"];
        
    }else if(rate.doubleValue > 20.0 && rate.doubleValue <= 40.0){
        image = [UIImage imageNamed:@"battery_low.png"];

    }else if(rate.doubleValue > 40.0 && rate.doubleValue <= 60.0){
        image = [UIImage imageNamed:@"battery_half.png"];

    }else if(rate.doubleValue > 60.0 && rate.doubleValue <= 80.0){
        image = [UIImage imageNamed:@"battery_high.png"];

    }else{
        image = [UIImage imageNamed:@"battery_full.png"];

    }
    return image;
}
- (void)loadSafeStyle
{
//    if (self.student.deviceInfo.averangheart.length != 0) {
//        self.distanceLabel.text = [NSString stringWithFormat:@"%@bpm",self.student.deviceInfo.averangheart];
//    }else{
//        self.distanceLabel.text = [NSString stringWithFormat:@"--bpm"];
//    }
    if (self.type == FootTYPE_WALK) {
        if(self.student.distance.integerValue == -1){
            self.distanceLabel.text = [NSString stringWithFormat:@"--"];
        }else{
//            self.distanceLabel.text = [NSString stringWithFormat:@"%ldm",self.student.distance.integerValue];
            self.distanceLabel.text = @"安全エリア内";

        }
        [self.gpsImageView setImage:[UIImage imageNamed:@"gps_safe.png"]];
        
        self.distanceLabel.textColor = BWColor(0, 176, 107, 1);
        self.headerView.layer.borderColor = BWColor(0, 176, 107, 1).CGColor;
        self.leftLineView.backgroundColor = BWColor(45, 100, 29, 1);
        self.rightLineView.backgroundColor = BWColor(45, 100, 29, 1);
        self.bottomLineView.backgroundColor = BWColor(45, 100, 29, 1);
        [self.lastCellBottomView setImage:[UIImage imageNamed:@"listBottom_safe.png"]];

    }else if(self.type == FootTYPE_SLEEP){
        self.distanceLabel.text = [NSString stringWithFormat:@"%@ bpm",self.student.deviceInfo.averangheart];
        [self.gpsImageView setImage:[UIImage imageNamed:@"xintiao_safe.png"]];
        
        self.distanceLabel.textColor = BWColor(0, 176, 107, 1);
        self.headerView.layer.borderColor = BWColor(0, 176, 107, 1).CGColor;
        self.leftLineView.backgroundColor = BWColor(45, 100, 29, 1);
        self.rightLineView.backgroundColor = BWColor(45, 100, 29, 1);
        self.bottomLineView.backgroundColor = BWColor(45, 100, 29, 1);
        [self.lastCellBottomView setImage:[UIImage imageNamed:@"listBottom_safe.png"]];

    }else{
        [self.gpsImageView setImage:[UIImage imageNamed:@"bus_gps.png"]];
        
        if(self.student.distance.integerValue == -1){
            self.distanceLabel.text = [NSString stringWithFormat:@"--"];
        }else{
//            self.distanceLabel.text = [NSString stringWithFormat:@"%ldm",self.student.distance.integerValue];
            self.distanceLabel.text = @"安全エリア内";

        }
        self.distanceLabel.textColor = BWColor(101, 83, 13, 1);
        self.headerView.layer.borderColor = BWColor(0, 176, 107, 1).CGColor;
        self.leftLineView.backgroundColor = BWColor(171, 144, 50, 1);
        self.rightLineView.backgroundColor = BWColor(171, 144, 50, 1);
        self.bottomLineView.backgroundColor = BWColor(171, 144, 50, 1);
        [self.lastCellBottomView setImage:[UIImage imageNamed:@"carLine.png"]];
    }


}
- (void)loadDangerStyle
{
    if (self.type == FootTYPE_WALK) {
        if(self.student.distance.integerValue == -1){
            self.distanceLabel.text = [NSString stringWithFormat:@"--"];
        }else{
            self.distanceLabel.text = [NSString stringWithFormat:@"約%ldm",self.student.distance.integerValue];

        }
        [self.gpsImageView setImage:[UIImage imageNamed:@"gps.png"]];
        self.headerView.layer.borderColor = BWColor(255, 75, 0, 1).CGColor;
        
        self.confirmBtn.hidden = NO;
        self.wifiImageView.hidden = YES;

    }else if(self.type == FootTYPE_SLEEP){
//        if (self.student.deviceInfo.averangheart.length != 0) {
//            self.distanceLabel.text = [NSString stringWithFormat:@"%@bpm",self.student.deviceInfo.averangheart];
//        }else{
//            self.distanceLabel.text = [NSString stringWithFormat:@"--bpm"];
//        }
        self.distanceLabel.text = [NSString stringWithFormat:@"%@ bpm",self.student.deviceInfo.averangheart];

        [self.gpsImageView setImage:[UIImage imageNamed:@"xintiao_danger.png"]];
        self.headerView.layer.borderColor = BWColor(108, 159, 155, 1).CGColor;
    }
    self.distanceLabel.textColor = BWColor(255, 75, 0, 1);
    self.leftLineView.backgroundColor = BWColor(76, 40, 11, 1);
    self.rightLineView.backgroundColor = BWColor(76, 40, 11, 1);
    self.bottomLineView.backgroundColor = BWColor(76, 40, 11, 1);
    [self.lastCellBottomView setImage:[UIImage imageNamed:@"listBottom_danger.png"]];
    

}
- (void)clickBackupAction
{
    NSLog(@"backup");
}
- (void)confirmAction:(HConfirmSafeButton *)button
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"confirmSafeStudentNoti" object:@{@"student":button.student}];
}

#pragma mark - LazyLoad -
- (UIImageView *)headerView
{
    if (!_headerView) {
        _headerView = [[UIImageView alloc] init];
        _headerView.layer.borderWidth = 2;
        _headerView.layer.cornerRadius = [BWTools getIsIpad] ? 58/2 : PAdaptation_x(58)/2;
        _headerView.layer.masksToBounds = YES;
    }
    return _headerView;
}
- (UIImageView *)batteryImageView
{
    if (!_batteryImageView) {
        _batteryImageView = [[UIImageView alloc] init];
        _batteryImageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _batteryImageView;
}
- (UIImageView *)wifiImageView
{
    if (!_wifiImageView) {
        _wifiImageView = [[UIImageView alloc] init];
        _wifiImageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _wifiImageView;
}
- (UIImageView *)gpsImageView
{
    if (!_gpsImageView) {
        _gpsImageView = [[UIImageView alloc] init];
    }
    return _gpsImageView;
}
- (UIButton *)backupBtn
{
    if (!_backupBtn) {
        _backupBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_backupBtn setImage:[UIImage imageNamed:@"backup.png"] forState:UIControlStateNormal];
        [_backupBtn addTarget:self action:@selector(clickBackupAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _backupBtn;
}
- (UIButton *)clockBtn
{
    if (!_clockBtn) {
        _clockBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_clockBtn setImage:[UIImage imageNamed:@"clock.png"] forState:UIControlStateNormal];

    }
    return _clockBtn;
}
- (HConfirmSafeButton *)confirmBtn
{
    if (!_confirmBtn) {
        _confirmBtn = [HConfirmSafeButton buttonWithType:UIButtonTypeCustom];
        [_confirmBtn setImage:[UIImage imageNamed:@"confirm_btn.png"] forState:UIControlStateNormal];
        [_confirmBtn setHidden:YES];
        [_confirmBtn addTarget:self action:@selector(confirmAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _confirmBtn;
}
- (UILabel *)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
    }
    return _titleLabel;
}
- (UILabel *)distanceLabel
{
    if (!_distanceLabel) {
        _distanceLabel = [[UILabel alloc] init];
    }
    return _distanceLabel;
}
- (UIView *)leftLineView
{
    if (!_leftLineView) {
        _leftLineView = [[UIView alloc] init];
    }
    return _leftLineView;
}
- (UIView *)rightLineView
{
    if (!_rightLineView) {
        _rightLineView = [[UIView alloc] init];
    }
    return _rightLineView;
}
- (UIView *)bottomLineView
{
    if (!_bottomLineView) {
        _bottomLineView = [[UIView alloc] init];
    }
    return _bottomLineView;
}
- (UIImageView *)lastCellBottomView
{
    if (!_lastCellBottomView) {
        _lastCellBottomView = [[UIImageView alloc] init];
        _lastCellBottomView.userInteractionEnabled = YES;
    }
    return _lastCellBottomView;
}
@end
