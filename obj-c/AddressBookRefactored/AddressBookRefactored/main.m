//
//  main.m
//  AddressBookRefactored
//
//  Created by Alvaro Muir on 1/6/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *aName = @"Alvaro Muir";
        NSString *aEmail = @"alvaro@muiral.com";
        NSString *bName = @"Barack Obama";
        NSString *bEmail = @"pbo@whitehouse.gov";
        NSString *cName = @"John Doe";
        NSString *cEmail = @"unknown@nowhere.org";
        NSString *dName = @"Shawn C. Carter";
        NSString *dEmail = @"jiggaman@rocnation.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        AddressBook *myBook = [[AddressBook alloc] initWithName: @"My Addy Book"];
//        NSLog(@"Entries in book after creation: %lu", (unsigned long)[myBook enteries]);
        
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        [card3 setName:cName andEmail:cEmail];
        [card4 setName:dName andEmail:dEmail];
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
//        NSLog(@"Entries in book after adding cards: %lu", (unsigned long)[myBook enteries]);
        
//        [myBook list];
        
        AddressCard *myCard;
        
        NSLog(@"Alvaro Muir");
        myCard = [myBook lookup: @"alvaro muir"];
        if (myCard != nil)
            [myCard print];
        else
            NSLog(@"Not Found!");
        
        NSLog(@"Michael Jordan");
        myCard = [myBook lookup: @"michael jordan"];
        if (myCard != nil)
            [myCard print];
        else
            NSLog(@"Not Found!");
        
        
        
        
        
    }
    return 0;
}

