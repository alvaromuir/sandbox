//
//  Car+Maintenance.h
//  Cars
//
//  Created by Alvaro Muir on 1/8/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import "Car.h"

@interface Car (Maintenance)


- (BOOL)needsOilChange;
- (void)changeOil;
- (void)rotateTires;
- (void)jumpBatteryUsingCar:(Car *)anotherCar;
@end
