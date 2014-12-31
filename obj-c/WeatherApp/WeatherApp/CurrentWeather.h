//
//  CurrentWeather.h
//  WeatherApp
//
//  Created by Alvaro Muir on 1/14/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CurrentWeather :  NSObject


-(NSDictionary *) getCurrentWeatherDataForCity: (NSString *) locale;
-(NSDictionary *) currentTempDict: (NSDictionary *) weatherData;

@end
