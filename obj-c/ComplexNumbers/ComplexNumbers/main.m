//
//  main.m
//  ComplexNumbers
//
//  Created by Alvaro Muir on 1/4/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        Fraction *fractionResult;
        
        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        Complex *complexResult;
        
        [f1 setTo: 1 over: 10];
        [f2 setTo: 2 over: 15];
        
        [c1 setReal: 18 andImaginary: 2.5];
        [c2 setReal: -5.0 andImaginary: 3.2];
        
        
//        add and print two complex numbers
        [c1 print]; NSLog(@"         +");[c2 print];
        NSLog(@"----------");
        complexResult = [c1 add: c2];
        [complexResult print];
        NSLog(@"\n");
        

        
//        add and print two fractions
        [f1 print]; NSLog(@"  +"); [f2 print];
        NSLog(@"----");
        fractionResult = [f1 add: f2];
        [fractionResult print];
        
        
        
    }
    return 0;
}

