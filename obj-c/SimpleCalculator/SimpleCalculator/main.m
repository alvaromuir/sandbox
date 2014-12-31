//
//  main.m
//  SimpleCalculator
//
//  Created by Alvaro Muir on 1/3/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

// accumulator
-(void) setAccumulator: (double) val;
-(void) clear;
-(double) accumulator;

// arithmetic
-(double) add: (double) val;
-(double) subtract: (double) val;
-(double) multiply:(double) val;
-(double) divide:(double) val;

-(double) changeSign;
-(double) reciprocal;
-(double) xSquared;

// memory
-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd: (double) val;
-(double) memorySubtract: (double) val;
-(double) memoryMultiply: (double) val;
-(double) memoryDivide: (double) val;

@end

@implementation Calculator
{
    double accumulator;
    double memory;
}

-(void) setAccumulator: (double) val
{
    accumulator = val;
}

-(void) clear
{
    accumulator = 0.0;
}

-(double) accumulator
{
    return accumulator;
}

-(double) add: (double) val
{
    accumulator += val;
    return accumulator;
}

-(double) subtract:(double) val
{
    accumulator -= val;
    return accumulator;
}

-(double) multiply:(double) val
{
    accumulator *= val;
    return accumulator;
}

-(double) divide:(double) val
{
    if (val != 0)
        accumulator /= val;
    else
        NSLog(@"ERROR: Division by zero.");
        accumulator = NAN;
    
    return accumulator;
}


-(double) changeSign
{
    accumulator = accumulator * -1;
    return accumulator;
}

-(double) reciprocal
{
    if (accumulator != 0)
    {
        accumulator = 1/accumulator;
        return accumulator;
    }
    else
        return accumulator;
}

-(double) xSquared
{
    accumulator *= accumulator;
    return accumulator;
}

-(double) memoryClear
{
    memory = 0.0;
    return accumulator;
}

-(double) memoryStore {
    accumulator = memory;
    return accumulator;
}

-(double) memoryRecall {
    memory = accumulator;
    return accumulator;
}

-(double) memoryAdd: (double) val
{
    memory += val;
    return accumulator;
}

-(double) memorySubtract: (double) val
{
    memory -= val;
    return accumulator;
}

-(double) memoryMultiply: (double) val
{
    memory *= val;
    return accumulator;
}

-(double) memoryDivide: (double) val
{
    memory /= val;
    return accumulator;
}

@end



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        double val1, val2;
        char operator;
    
        Calculator *deskCacl = [Calculator new];
        
        NSLog(@"Type your expression:");
        scanf("%lf %c %lf", &val1, &operator, &val2);
        
        [deskCacl setAccumulator: val1];
        
        switch (operator) {
            case '+':
                [deskCacl add: val2];
                break;
            case '-':
                [deskCacl subtract: val2];
                break;
            case '*':
                [deskCacl multiply: val2];
                break;
            case '/':
                [deskCacl divide: val2];
                break;
            default:
                NSLog(@"Uknown operator '%c'", operator);
                break;
        }

        
        NSLog(@"%.2f", [deskCacl accumulator]);
        
    }
    return 0;
}

