//
//  AddressCard.h
//  AddressBookRefactored
//
//  Created by Alvaro Muir on 1/6/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email;
-(void) print;
-(void) setName:(NSString *) theName andEmail: (NSString *) theEmail;
@end
