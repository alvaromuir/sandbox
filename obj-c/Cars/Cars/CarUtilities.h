//
//  CarUtilities.h
//  Cars
//
//  Created by Alvaro Muir on 1/8/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarUtilities : NSObject

NSString *CUGetRandomMake (NSArray *makes);
NSString *CUGetRandomModel (NSArray *models);
NSString *CUGetRandomMakeAndModel (NSDictionary *makesAndModels);

@end
