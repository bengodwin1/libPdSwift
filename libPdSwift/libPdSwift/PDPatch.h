//
//  PDPatch.h
//  PDiOS
//
//  Created by Benjamin Godwin on 7/28/19.
//  Copyright © 2019 Benjamin Godwin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PdDispatcher.h"

NS_ASSUME_NONNULL_BEGIN

@interface PDPatch : NSObject

-(void)onOff:(BOOL)yesNo;
-(instancetype)initWithFile:(NSString *)pdFile;

@end

NS_ASSUME_NONNULL_END
