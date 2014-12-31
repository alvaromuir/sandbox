//
//  AddressCard.h
//  AddressBook
//
//  Created by Alvaro Muir on 11/7/11.
//  Copyright 2011 MASSForward. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject <NSCoding, NSCopying>
{
    NSString *name;
    NSString *emailAddress;
    NSString *telephoneNumber;
    NSMutableString *mstr;
}

@property (copy,nonatomic) NSString *name, *emailAddress, *telephoneNumber;

-(void) setName:(NSString *)theName thenEmail:(NSString *)theEmailAddy andTelphone:(NSString *)theTelNumber;
-(void) print;
-(void) dealloc;
-(NSComparisonResult) compareNames: (id)element;
-(void) retainName: (NSString *)theName thenEmail:(NSString *)theEmailAddy andTelphone:(NSString *)theTelNumber;

@end