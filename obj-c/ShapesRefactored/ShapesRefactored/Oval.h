//
//  Oval.h
//  ShapesRefactored
//
//  Created by Alvaro Muir on 1/5/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Oval : NSObject
@property double radius;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(double) area;
-(double) circumference;

@end
