//
//  MyView.m
//  Quartz1
//
//  Created by Nguyen Van Hung on 2/12/11.
//  Copyright 2011 FPT. All rights reserved.
//

#import "MyView.h"


@implementation MyView

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    // Drawing code here.
	//background color
	[[NSColor grayColor]set];
	//fill the background
	NSRectFill([self bounds]);
	//first rectange
	NSRect startingRect = NSMakeRect(50, 50, 50, 50);
	//create arrays of rectange with colors
	int count = 12;
	NSRect rectArray [count];
	NSColor* colorArray[count];
	rectArray[0] = startingRect;
	colorArray[0] = [NSColor redColor];
	NSRect aRect = rectArray[0];
	for(int i =1; i <count; i++)
	{
		//copy rect

		aRect.origin.x +=100;
		if (NSMaxX(aRect) > NSMaxX([self bounds])) {
			aRect.origin.x = startingRect.origin.x;
			aRect.origin.y +=100;
		}
		//add a rect to array
		rectArray[i] = aRect;
		//add color
		colorArray[i] = [NSColor colorWithCalibratedHue:i*0.02 saturation:2 brightness:0.7 alpha:1];
	}
	//draw rectanges
	NSRectFillListWithColors(rectArray, colorArray, count);
	//draw a border
	[[NSColor whiteColor]set];
	for(int i =0; i<count;i++)
	{
		NSFrameRectWithWidth(rectArray[i], 2);
	}
	
}
- (BOOL)isFlipped
{
	return YES;
}

@end
