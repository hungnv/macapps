//
//  Quartz2AppDelegate.h
//  Quartz2
//
//  Created by Nguyen Van Hung on 2/13/11.
//  Copyright 2011 FPT. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Quartz2AppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
