//
//  secondPage.m
//  delegateProtocol
//
//  Created by Tawhid Joarder on 4/2/19.
//  Copyright © 2019 Tawhid Joarder. All rights reserved.
//

#import "secondPage.h"

@interface secondPage ()

@end

@implementation secondPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)onePressed:(id)sender {
    [self.delegatee setData:@"Button One Pressed!!!!!"];
    [self.navigationController popViewControllerAnimated:YES];

}
- (IBAction)twoPressed:(id)sender {
     [self.delegatee setData:@"Button Two Pressed!!!!!"];
     [self.navigationController popViewControllerAnimated:YES];
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
