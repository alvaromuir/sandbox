//
//  AddressBook.h
//  AddressBook
//
//  Created by Alvaro Muir on 11/8/11.
//  Copyright 2011 MASSForward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

{
    NSString *bookName;
    NSMutableArray *book;
}

-(id) initWithName: (NSString *)name;
-(void) addCard: (AddressCard *)theCard;
-(void) removeCard: (AddressCard *)theCard;
-(int) entries;
-(void) list;
-(void) sort;
-(AddressCard *) lookup: (NSString *)theName;
-(void) dealloc;


@end
