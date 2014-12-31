//
//  Person.h
//  Cars
//
//  Created by Alvaro Muir on 1/8/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Car;

@interface Person : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic, weak) Car *car;

@end
