//
//  AddressBook.h
//  AddressBookRefactored
//
//  Created by Alvaro Muir on 1/6/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject
@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(instancetype) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(NSUInteger) enteries;
-(void) list;
-(AddressCard *) lookup: (NSString *) theName;
@end
