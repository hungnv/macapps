//
//  MyView.m
//  Quartz2
//
//  Created by Nguyen Van Hung on 2/13/11.
//  Copyright 2011 FPT. All rights reserved.
//

#import "MyView.h"


@implementation MyView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
    NSPoint startingPoint = NSMakePoint(20, 30);
    NSPoint endPoint = NSMakePoint(100, 200);
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path setLineWidth:4];
    [path moveToPoint:startingPoint];
    [path curveToPoint:endPoint controlPoint1:NSMakePoint(20,200) controlPoint2:NSMakePoint(100,30)];
    
    [[NSColor redColor] set];
    //make path
    [path stroke];
    [path moveToPoint:NSMakePoint(100, 200)];
    [path appendBezierPathWithArcWithCenter:endPoint radius:50 startAngle:0 endAngle:360];
    [path moveToPoint:NSMakePoint(300, 200)];
    [path appendBezierPathWithOvalInRect:NSMakeRect(200, 200, 200, 100)];
    //[path appendBezierPathWithRoundedRect:NSMakeRect(300, 300, 70, 50) xRadius:50 yRadius:30];
      [path stroke];
//    [path stroke];
}

- (BOOL) isFlipped
{
    return YES;
}
@end
