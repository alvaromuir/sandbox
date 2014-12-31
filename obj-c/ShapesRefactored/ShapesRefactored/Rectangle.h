//
//  Rectagle.h
//  ShapesRefactored
//
//  Created by Alvaro Muir on 1/4/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject

@property double width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth:(double) w andHeight: (double) h;
-(double) area;
-(double) perimeter;

@end
