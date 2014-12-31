//
//  main.m
//  Reverse
//
//  Created by Alvaro Muir on 11/1/11.
//  Copyright 2011 MASSForward. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int number, right_digit;
    
    NSLog(@"Please enter a number");
    scanf("%i", &number);
    
    do {
        right_digit = number % 10;
        NSLog(@"%i", right_digit);
        number /= 10;
    }
    while (number != 0);
    
    [pool drain];
    return 0;
}

