//
//  Fraction.m
//  FractionTestRefactored2
//
//  Created by Alvaro Muir on 1/4/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import "Fraction.h"

static int gCounter;

@implementation Fraction

@synthesize numerator, denominator;

+(Fraction *) allocF
{
    extern int gCounter;
    ++gCounter;
    
    return [Fraction alloc];
}

+(int) count
{
    extern int gCounter;
    return gCounter;
    
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

-(double) convertToNum

{
    if (denominator != 0)
        return (double)numerator / denominator;
    else
        return NAN;
}

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;

    
    while(v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    if (u != 0)
        numerator /= u;
    if (u != 0)
        denominator /= u;
}

-(instancetype) initWith: (int) n over: (int) d
{
    self = [super init];
    if (self)
        [self setTo: n over: d];
    
    return self;
}

-(NSString *) description
{
    return [NSString stringWithFormat: @"%i/%i", numerator, denominator];
}

@end
