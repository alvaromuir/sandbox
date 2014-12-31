//
//  Bicycle.h
//  Cars
//
//  Created by Alvaro Muir on 1/8/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StreetLegal.h"

@interface Bicycle : NSObject <StreetLegal>

-(void) startPedaling;
-(void)removeFrontWheel;
-(void)lockToStructure:(id)theStructure;

@end
