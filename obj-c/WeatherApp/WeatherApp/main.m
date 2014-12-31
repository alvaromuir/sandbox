//
//  main.m
//  WeatherApp
//
//  Created by Alvaro Muir on 1/14/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CurrentWeather.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        CurrentWeather *weather = [[CurrentWeather alloc] init];
        NSDictionary *localWeather = [weather getCurrentWeatherDataForCity:@"South Orange,NJ,US"];
        NSDictionary *weatherData = [weather currentTempDict:localWeather];
        NSLog(@"%@", weatherData);
        
    }
    return 0;
}

