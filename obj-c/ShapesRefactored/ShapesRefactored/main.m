//
//  main.m
//  ShapesRefactored
//
//  Created by Alvaro Muir on 1/4/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Oval.h"
#import "Square.h"
#import "XYPoint.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Square *mySquare = [[Square alloc] init];
        
        [mySquare setSide: 5];
        NSLog(@"Square s = %.2f", mySquare.side);
        NSLog(@"Square Area = %.2f, Perimeter = %.2f", [mySquare area], [mySquare perimeter]);
        
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];

        
        [myPoint setX: 100 andY: 200];
        [myRect setWidth: 5 andHeight: 8];
        [myRect setOrigin: myPoint];
        NSLog(@"Rectangle w = %.2f, h = %.2f", myRect.width, myRect.height);
        NSLog(@"Rectangle origin at (%.2f, %.2f)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Rectangle Area = %.2f, Perimeter = %.2f", [myRect area], [myRect perimeter]);
        
        [myPoint setX: 50 andY: 50];
        NSLog(@"Rectangle origin at (%.2f, %.2f)", myRect.origin.x, myRect.origin.y);
        
        

        
        
        
    }
    return 0;
}

