//
//  main.m
//  AddressBook
//
//  Created by Alvaro Muir on 11/7/11.
//  Copyright 2011 MASSForward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    
    NSString *name1 = @"Alvaro Muir";
    NSString *email1 = @"alvaromuir@gmail.com";
    NSString *tel1 = @"3472240058";
    
    NSString *name2 = @"Shondi J. Muir";
    NSString *email2 = @"shondi@gmail.com";
    NSString *tel2 = @"9176477504";
    
    NSString *name3 = @"Aiden Muir";
    NSString *email3 = @"skipperaiden@gmail.com";
    NSString *tel3 = @"4045551212";


    NSString *name4 = @"Jada Johnson";
    NSString *email4 = @"jadajohnson@gmail.com";
    NSString *tel4 = @"5155551212";
    
    AddressCard *card1 = [[AddressCard alloc] init];
    AddressCard *card2 = [[AddressCard alloc] init];
    AddressCard *card3 = [[AddressCard alloc] init];
    AddressCard *card4 = [[AddressCard alloc] init];
    AddressCard *myCard;
    

    AddressBook *myBook = [[AddressBook alloc] initWithName: @"My Address Book"];
    NSLog(@"Entries after address book creation: %i", [myBook entries]);
    
    
    
    [card1 setName: name1 thenEmail: email1 andTelphone: tel1];
    [myBook addCard: card1];
    
    [card2 setName: name2 thenEmail: email2 andTelphone: tel2];
    [myBook addCard: card2];
    
    [card3 setName: name3 thenEmail: email3 andTelphone: tel3];
    [myBook addCard: card3];
    
    [card4 setName: name4 thenEmail: email4 andTelphone: tel4];
    [myBook addCard: card4];
    

    NSLog(@"Entries after address book after adding cards: %i", [myBook entries]);
    
    // list all cards
    NSLog(@"\n");

    [myBook list];
    
    NSLog(@"\n");
    [myBook sort];
    [myBook list];
    
    // lookup
    NSLog(@"Aiden Muir");
    myCard = [myBook lookup: @"Aiden Muir"];
    if (myCard != nil)
        [myCard print];
    else
        NSLog(@"Not Found!");
        
    
    NSLog(@"Ava Muir");
    myCard = [myBook lookup: @"Ava Muir"];
    if (myCard != nil)
        [myCard print];
    else
        NSLog(@"Not Found!");
    
    [card1 release];
    [card2 release];
    [card3 release];
    [card4 release];
    [myBook release];
    

    [pool drain];
    return 0;
}

