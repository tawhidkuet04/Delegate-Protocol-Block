//
//  secondPage.h
//  delegateProtocol
//
//  Created by Tawhid Joarder on 4/2/19.
//  Copyright © 2019 Tawhid Joarder. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol newDelegate <NSObject>
-(void)setData:(NSString *) message;
@end
@interface secondPage : UIViewController
@property(nonatomic,weak) id<newDelegate> delegatee;
@end

NS_ASSUME_NONNULL_END
