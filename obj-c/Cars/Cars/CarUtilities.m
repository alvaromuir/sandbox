//
//  CarUtilities.m
//  Cars
//
//  Created by Alvaro Muir on 1/8/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import "CarUtilities.h"

@implementation CarUtilities

static id getRandomItemFromArray(NSArray *someArray);

NSString *CUGetRandomMake (NSArray *makes){
    return getRandomItemFromArray(makes);
}
NSString *CUGetRandomModel (NSArray *models){
    return getRandomItemFromArray(models);
}
NSString *CUGetRandomMakeAndModel (NSDictionary *makesAndModels){
    NSArray *makes = [makesAndModels allKeys];
    NSString *randomMake = CUGetRandomMake(makes);
    NSArray *models = makesAndModels[randomMake];
    NSString *randomModel = CUGetRandomMake(models);
    return [randomMake stringByAppendingFormat:@" %@", randomModel];
}


static id getRandomItemFromArray(NSArray *someArray){
    int maximum = (int)[someArray count];
    int randomIndex = arc4random_uniform(maximum);
    return someArray[randomIndex];
}

@end
