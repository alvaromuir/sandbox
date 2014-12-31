//
//  main.m
//  Cars
//
//  Created by Alvaro Muir on 1/8/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Person.h"
#import "Bicycle.h"
#import "StreetLegal.h"
#import "Car+Maintenance.h"
#import "Coupe.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
        Person *alvaro = [[Person alloc] init];
        alvaro.name = @"Alvaro Muir";
        
        Car *audi = [[Car alloc] init];
        audi.driver = alvaro;
        NSLog(@"Created a %@", [audi model]);
        NSLog(@"%@ is driven by %@", [audi model], [audi driver]);
        
        Car *chevy =  [[Car alloc] initWithModel: @"Chevy Camaro"];
        NSLog(@"Created a %@", [chevy model]);
        
        
        // get class
        Car *fisker = [[Car alloc] initWithModel: @"Fisker Karma"];
        NSLog(@"%@ is an instance of the %@ class", [fisker model], [fisker class]);
        
        // check obj against a class and all subclasses
        if([fisker isKindOfClass: [NSObject class]]){
            NSLog(@"%@ is instance of NSObject or one of it's subclasses", [fisker model]);
        } else {
            NSLog(@"%@ is not an instance of NSObject or one of its subclasses", [fisker model]);
        }
        
        // check obj against a class but none of it's subclasses
        if([fisker isMemberOfClass: [NSObject class]]){
            NSLog(@"%@ is an instance of NSObject", [fisker model]);
        } else {
            NSLog(@"%@ is not an instance of NSObject", [fisker model]);
        }
        
        // convert between strings and classes
        if(NSClassFromString(@"Car") == [Car class]){
            NSLog(@"I can convert between strings and classes!");
        }
        
        Car *honda = [[Car alloc] init];
        [honda startEngine];
        NSLog(@"Running: %d", honda.running);
        
        
        
        Bicycle *bike = [[Bicycle alloc] init];
        [bike startPedaling];
        [bike signalLeftTurn];
        [bike signalStop];
        [bike lockToStructure:nil];
        
        Car *porsche = [[Coupe alloc] init];
        porsche.model = @"Porsche 911 Turbo";
        
        Car *ford = [[Car alloc] init];
        ford.model = @"Ford F-150";
        
        
        // "Standard" functionality from Car.h
        [porsche startEngine];
        [porsche drive];
        [porsche turnLeft];
        [porsche turnRight];
        
        // Additional methods from Car+Maintenance.h
        if ([porsche needsOilChange]) {
            [porsche changeOil];
        }
        [porsche rotateTires];
        [porsche jumpBatteryUsingCar:ford];
        
        
        
        [porsche driveForDuration:10.0
                withVariableSpeed:^(double time){
                    return 5.0;
                }
                steps:100];
        
         NSLog(@"The Porsche has now driven %.2f meters", porsche.odometer);
        
        [porsche driveForDuration:10.0
                withVariableSpeed:^(double time){
                    return time + 5.0;
                }
                            steps:100];
        NSLog(@"The Porsche has now driven %.2f meters", porsche.odometer);
        
        
        NSArray *inventory = @[@"Honda Civic", @"Honda Prelude", @"Honda Accord"];
        int selectedInex = 3;
        
        @try {
            NSString *car = inventory[selectedInex];
            NSLog(@"The selected car is %@", car);
        }
        @catch (NSException *exception) {
            NSLog(@"An exception occurred: %@", exception.name);
            NSLog(@"Here are some details: %@", exception.reason);
        }
        @finally {
            NSLog(@"Executing finally block");
        }
    }
    return 0;
}

