//
//  Square.m
//  ShapesRefactored
//
//  Created by Alvaro Muir on 1/4/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide:(double)s
{
    [self setWidth: s andHeight: s];
}

-(double) side
{
    return self.width;
}
@end
