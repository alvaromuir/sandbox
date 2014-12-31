//
//  Fraction+MathOps.m
//  Fractions
//
//  Created by Alvaro Muir on 1/5/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import "Fraction.h"
#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)
-(Fraction *) add: (Fraction *) f
{
    //    a/b + c/d = ((a*d) + (b*c)) / (b*d)
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (self.numerator * f.denominator) + (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    return result;
}


-(Fraction *) subtract: (Fraction *) f
//    a/b - c/d = ((a*d) - (b*c)) / (b*d)
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (self.numerator * f.denominator) - (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    return result;
}


-(Fraction *) multiply: (Fraction *) f
//    a/b - c/d = (a*c) / (b*d)
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.numerator;
    result.denominator = + self.denominator * f.denominator;
    
    [result reduce];
    return result;
}


-(Fraction *) divide: (Fraction *) f
//    a/b - c/d = (a*d) / (b*c)
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.denominator;
    result.denominator =  self.denominator * f.numerator;
    
    [result reduce];
    return result;
}
@end