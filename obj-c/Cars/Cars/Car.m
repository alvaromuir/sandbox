//
//  Car.m
//  Cars
//
//  Created by Alvaro Muir on 1/8/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import "Car.h"
#import "Car+Protected.h"

static NSString *_defaultModel;

@implementation Car

-(id)initWithModel:(NSString *)aModel{
    self = [super init];
    if (self){
        _model = [aModel copy];
        _odometer = 0;
    }
    return self;
        
}

-(id)init{
    return [self initWithModel:_defaultModel];
}

-(void) startEngine{
    _running = YES;
    NSLog(@"Starting the %@'s engine", _model);
}

-(void) stopEngine{
    _running = NO;
}

- (void)drive {
    [self prepareToDrive];
    NSLog(@"The %@ is now driving", _model);
}


- (void)driveForDistance:(NSNumber *)theDistance {
    NSLog(@"The %@ just drove %0.1f miles",
          _model, [theDistance doubleValue]);
}

-(void)driveForDuration:(double)duration
      withVariableSpeed:(double (^)(double time))speedFunction
                  steps:(int)numSteps{
    double dt = duration / numSteps;
    for (int i=1; i<numSteps; i++) {
        _odometer += speedFunction(i*dt) *dt;
    }
}

- (void)turnLeft {
    NSLog(@"The %@ is turning left", _model);
}

- (void)turnRight {
    NSLog(@"The %@ is turning right", _model);
}

- (void)turnByAngle:(NSNumber *)theAngle
            quickly:(NSNumber *)useParkingBrake {
    if ([useParkingBrake boolValue]) {
        NSLog(@"The %@ is drifting around the corner!", _model);
    } else {
        NSLog(@"The %@ is making a gentle %0.1f degree turn",
              _model, [theAngle doubleValue]);
    }
}

+(void) setDefaultModel: (NSString *)aModel{
    _defaultModel = [aModel copy];
}

+(void)initialize{
    if (self == [Car self]){
        _defaultModel = @"Audi RS3";
    }
}

@end
