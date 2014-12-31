//
//  AddressBook.m
//  AddressBookRefactored
//
//  Created by Alvaro Muir on 1/6/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;


-(instancetype) initWithName: (NSString *) name {
    self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    return self;
}

-(instancetype) init {
    return [self initWithName: @"NoName"];
}

-(void) addCard:(AddressCard *) theCard {
    [book addObject: theCard];
}

-(NSUInteger) enteries {
    return [book count];
}
-(void) list {
    NSLog(@"======== Contents of  %@ ======== ", bookName);
    [book enumerateObjectsUsingBlock:^(AddressCard *theCard, NSUInteger idx, BOOL *stop)
        {
            NSLog(@"%-20s  %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
        }
     ];
    NSLog(@"===========================================");
}

-(AddressCard *) lookup: (NSString *) theName
{
    for (AddressCard *nextCard in book)
        if ( [nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame)
            return nextCard;
    return nil;
}

@end
