//
//  Oval.m
//  ShapesRefactored
//
//  Created by Alvaro Muir on 1/5/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import "Oval.h"
#define PI 3.141592654

@implementation Oval
{
    XYPoint *origin;
}


-(void) setOrigin: (XYPoint *) pt
{
    if (! origin)
        origin = [[XYPoint alloc] init];
    
    origin.x = pt.x;
    origin.y = pt.y;
}

-(XYPoint *) origin
{
    return origin;
}

-(double) area {
    return PI *_radius *_radius;
}

-(double) circumference
{
    return 2.0 * PI * _radius ;
}

@end
