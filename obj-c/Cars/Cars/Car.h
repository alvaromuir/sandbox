//
//  Car.h
//  Cars
//
//  Created by Alvaro Muir on 1/8/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Car : NSObject

@property (copy) NSString *model;
@property (readonly) double odometer;
@property (nonatomic, strong) Person *driver;
@property (getter=isRunning, readonly) BOOL running;


-(id)initWithModel:(NSString *)aModel;

-(void) startEngine;

-(void) stopEngine;

-(void) drive;

-(void)driveForDistance:(NSNumber *)theDistance;

-(void)driveForDuration:(double)duration
      withVariableSpeed:(double (^)(double time))speedFunction
                  steps:(int)numSteps;

-(void)turnLeft;

-(void)turnRight;

-(void)turnByAngle:(NSNumber *)theAngle

            quickly:(NSNumber *)useParkingBrake;



+(void) setDefaultModel: (NSString *)aModel;

@end
