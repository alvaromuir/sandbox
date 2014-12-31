//
//  mrlShapesAndColors.m
//  BasicCocoaDrawing
//
//  Created by Alvaro Muir on 1/6/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import "mrlShapesAndColors.h"
#import "DateTime.h"

@implementation mrlShapesAndColors

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}



- (void)drawRect:(NSRect)dirtyRect {
    
    DateTime *currentTime = [[DateTime alloc] init];
    
    
    
    NSColor *backgroundColor = [NSColor colorWithCalibratedRed:(37.0/255.0)
                                                            green:(36.0/255.0)
                                                            blue:(36.0/255.0)
                                                            alpha:(255.0/255.0)
                                ];

    NSRect bounds = self.bounds;
    [backgroundColor set];
    NSRectFill(bounds);
    
    NSColor *foregroundColor = [NSColor colorWithCalibratedRed:(230.0/255.0)
                                                            green:(230.0/255.0)
                                                            blue:(230.0/255.0)
                                                            alpha:(255.0/255.0)
                                ];
    
    NSString *data = [currentTime dateString];
    NSMutableDictionary *txtAttribs = [NSMutableDictionary dictionary];
    
    NSPoint origin = NSMakePoint( 40, 100);
    
    [txtAttribs setObject: foregroundColor forKey: NSForegroundColorAttributeName];
    [txtAttribs setObject: [NSFont fontWithName: @"Roboto Slab Thin" size: 43.0] forKey: NSFontAttributeName];
    NSAttributedString *styledText = nil;
    styledText = [[NSAttributedString alloc] initWithString: data attributes: txtAttribs];
    [styledText drawAtPoint: origin];
    
    

}

@end
