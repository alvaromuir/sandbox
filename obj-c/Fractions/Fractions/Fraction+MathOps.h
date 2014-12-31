//
//  Fraction+MathOps.h
//  Fractions
//
//  Created by Alvaro Muir on 1/5/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
@end
