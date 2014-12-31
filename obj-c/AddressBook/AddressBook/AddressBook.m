//
//  AddressBook.m
//  AddressBook
//
//  Created by Alvaro Muir on 11/8/11.
//  Copyright 2011 MASSForward. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

- (id)initWithName:(NSString *)name
{
    self = [super init];
    if (self)
    {
        bookName = [[NSString alloc] initWithString: name];
        book = [[NSMutableArray alloc] init];
    }
    return self;
}

-(id) init
{
    return [self initWithName: @"No Name"];
}

-(void) addCard:(AddressCard *)theCard
{
    [book addObject: theCard];
}

-(void) removeCard:(AddressCard *)theCard
{
    [book removeObjectIdenticalTo: theCard];
}

-(int) entries
{
    return [book count];
}

-(void) list
{
    NSLog(@"============ Contents of %@ ============", bookName);
    for (AddressCard *theCard in book)
        NSLog(@"%-14s  %-22s  %s", [theCard.name UTF8String], [theCard.emailAddress UTF8String], [theCard.telephoneNumber UTF8String] );
    
}

// Case Insensitive loookups

-(AddressCard *) lookup: (NSString *) theName 
{
    for (AddressCard *nextCard in book)
        if ([nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame)
            return nextCard;
        
    return nil;            
}


// Sorting

-(void) sort 
{
    [book sortUsingSelector: @selector(compareNames:)];
}
-(void) dealloc
{
    [bookName release];
    [book release];
    [super dealloc];
}
@end
