//
//  AddressCard.m
//  AddressBookRefactored
//
//  Created by Alvaro Muir on 1/6/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

-(void) print {
    NSLog(@"                      ____________");
    NSLog(@" --------------------|            |");
    NSLog(@"|                                 |");
    NSLog(@"| %-31s |", [_name UTF8String]);
    NSLog(@"| %-31s |", [_email UTF8String]);
    NSLog(@"|                                 |");
    NSLog(@"|                                 |");
    NSLog(@"|                                 |");
    NSLog(@"|         O               O       |");
    NSLog(@"===================================");
}

-(void) setName:(NSString *) theName andEmail: (NSString *) theEmail {
    if (self.name != theName)
        self.name = theName;
    
    if (self.email != theEmail)
        self.email = theEmail;
}

@end
