//
//  Fraction.h
//  FractionTestRefactored2
//
//  Created by Alvaro Muir on 1/4/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(void) reduce;
-(instancetype) initWith: (int) n over: (int) d;
-(NSString *) description;

+(Fraction *) allocF;
+(int) count;



@end
