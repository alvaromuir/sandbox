//
//  Complex.h
//  ComplexNumbers
//
//  Created by Alvaro Muir on 1/4/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal: (double) a andImaginary: (double) b;

-(Complex *) add: (Complex *) f;

@end
