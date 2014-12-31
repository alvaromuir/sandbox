//
//  Rectagle.m
//  ShapesRefactored
//
//  Created by Alvaro Muir on 1/4/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}


-(void) setWidth: (double) w andHeight: (double) h
{
    _width = w;
    _height = h;
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
    return _width * _height;
}

-(double) perimeter
{
    return (_width + _height) *2;
}

@end
