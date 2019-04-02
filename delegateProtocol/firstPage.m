//
//  firstPage.m
//  delegateProtocol
//
//  Created by Tawhid Joarder on 4/2/19.
//  Copyright © 2019 Tawhid Joarder. All rights reserved.
//

#import "firstPage.h"
#import "secondPage.h"
@interface firstPage ()<newDelegate>
@property (strong, nonatomic) IBOutlet UILabel *textLabel;
-(void)performIt:(void (^)(void))blockCode;
@property (strong, nonatomic) IBOutlet UILabel *blockLable;
@property (strong, nonatomic) IBOutlet UILabel *start;

@property (nonatomic) dispatch_queue_t backgroundQueue;

@end

@implementation firstPage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.backgroundQueue = dispatch_queue_create("backgroundQueue", dispatch_queue_attr_make_with_qos_class(DISPATCH_QUEUE_SERIAL, QOS_CLASS_USER_INITIATED, -1));
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)blockButton:(id)sender {
    [self performIt:^{
        dispatch_async(dispatch_get_main_queue(), ^{
            self.blockLable.text = @"Block Completed!!!!!";
        });
    }];
}
- (IBAction)pressed:(id)sender {
    secondPage *second =  [ [secondPage alloc] init ] ;
   second.delegatee = self ;
    
   [self.navigationController pushViewController:second animated:YES];
    
}
-(void)performIt:(void (^)(void))blockCode{
    self.start.text = @"Started!!!!!";
    dispatch_async(self.backgroundQueue, ^{
        sleep(5);
        blockCode();
    });
}
-(void)setData:(NSString *)message{
    _textLabel.text = [ NSString stringWithFormat:@"%@", message];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
