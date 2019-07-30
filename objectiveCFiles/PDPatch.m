//
//  PDPatch.m
//  PDiOS
//
//  Created by Benjamin Godwin on 7/28/19.
//  Copyright © 2019 Benjamin Godwin. All rights reserved.
//

#import "PDPatch.h"

@implementation PDPatch

-(void)onOff:(BOOL)yesNo {
    float yn = (float)yesNo;
    [PdBase sendFloat:yn toReceiver:@"onOff"];
}

-(instancetype)initWithFile:(NSString *)pdFile{
    void *patch;
    
    UIViewController *viewController = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    
    self = [super init];
    if(self) {
        patch = [PdBase openFile:pdFile path:[[NSBundle mainBundle]resourcePath]];
        if(!patch) {
            UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Uh oh" message:@"Pd patch not found." preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Crap" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
            
            [alert addAction:defaultAction];
            [viewController presentViewController:alert animated:YES completion:nil];
        }
    }
    
    return self;
}

@end
