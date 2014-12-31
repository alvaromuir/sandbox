//
//  WeatherCodes.m
//  WeatherApp
//
//  Created by Alvaro Muir on 1/14/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import "WeatherCodes.h"

@implementation WeatherCodes

-(NSDictionary *) allCodes{
    NSDictionary *codes = @{
                            @"01d":@"B",
                            @"01n":@"C",
                            @"02d":@"H",
                            @"02n":@"I",
                            @"03d":@"N",
                            @"03n":@"N",
                            @"04d":@"Y",
                            @"04n":@"Y",
                            @"09d":@"R",
                            @"09n":@"R",
                            @"10d":@"Q",
                            @"10n":@"Q",
                            @"11d":@"0",
                            @"11n":@"0",
                            @"13d":@"W",
                            @"13n":@"W",
                            @"50d":@"M",
                            @"50n":@"M"
                            };
    return codes;
};
@end
