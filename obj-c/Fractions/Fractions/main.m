//
//  main.m
//  Fractions
//
//  Created by Alvaro Muir on 1/5/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Fraction+MathOps.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Fraction *a = [Fraction allocF];
        Fraction *b = [Fraction allocF];
        Fraction *result;
        

        result = [a add: b];
        
        NSLog(@"%@", a);

    }
    return 0;
}
