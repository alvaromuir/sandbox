//
//  mrlAppDelegate.m
//  ScreenSaverFrameWork
//
//  Created by Alvaro Muir on 1/12/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import "mrlAppDelegate.h"
#import "mrlContent.h"
#import "Utilities.h"

@implementation mrlAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // pseudo 'fullscreen' (not cocoa API)
//    NSRect fullScreenRect = [[NSScreen mainScreen] frame];
//    [_window setFrame:fullScreenRect display:YES];
//    [_window makeKeyAndOrderFront:self];
    
    // get font names
    // NSLog(@"%@",[[[NSFontManager sharedFontManager] availableFontFamilies] description]);
    
    
    NSRect viewFrame = [self.window.contentView bounds];
    mrlContent *contentView;
    contentView = [[mrlContent alloc] initWithFrame:viewFrame];
    [self.window.contentView addSubview: contentView];
    
    Utilities *utils = [Utilities new];
    [utils fontActivate:@"BentonSans-Bold.otf"];
    [utils fontActivate:@"BentonSans-Book.otf"];
    [utils fontActivate:@"BentonSans-ExtraLight.otf"];
    [utils fontActivate:@"BentonSans-UltraCondensedMedium.otf"];
    [utils fontActivate:@"meteocons.ttf"];
    [utils fontActivate:@"RobotoSlab-Thin.ttf"];
}

@end
