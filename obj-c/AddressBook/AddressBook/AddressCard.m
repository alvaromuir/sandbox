//
//  AddressCard.m
//  AddressBook
//
//  Created by Alvaro Muir on 11/7/11.
//  Copyright 2011 MASSForward. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard



@synthesize name, emailAddress, telephoneNumber;


-(void) setName:(NSString *)theName thenEmail:(NSString *)theEmailAddy andTelphone:(NSString *)theTelNumber
{
    if (theName !=NULL)
    {
        mstr = [NSMutableString stringWithString: theName];
        self.name = [theName capitalizedString];
    }
    
    self.emailAddress = theEmailAddy;
    
    if ([theTelNumber length] == 10)
    {
        mstr = [NSMutableString stringWithString: theTelNumber];
        [mstr insertString: @"(" atIndex: 0];
        [mstr insertString: @")" atIndex: 4];
        [mstr insertString: @"-" atIndex: 8];
        self.telephoneNumber = mstr;
    }
    else
        self.telephoneNumber = theTelNumber;
}



-(NSComparisonResult) compareNames: (id)element
{
    return [name compare: [element name]];
}


-(void) print
{
    NSLog(@"\n");
    NSLog(@" =====================////////////=");
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|  %-31s |",[name UTF8String]);
    NSLog(@"|  %-31s |",[emailAddress UTF8String]);
    NSLog(@"|  %-31s |",[telephoneNumber UTF8String]);    
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|       O                 O        |");
    NSLog(@" ==================================");
    NSLog(@"\n");
}

-(void) dealloc
{
    [name release];
    [emailAddress release];
    [telephoneNumber release];    
    [super dealloc];
}

@end
