//
//  CurrentWeather.m
//  WeatherApp
//
//  Created by Alvaro Muir on 1/14/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import "CurrentWeather.h"
#import "WeatherCodes.h"

@implementation CurrentWeather

-(NSDictionary *) convertKelvin: (NSNumber *)  kelvin{
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setMaximumFractionDigits:1];
    [formatter setRoundingMode: NSNumberFormatterRoundDown];
    
    NSNumber *cTemp = [NSNumber numberWithDouble: [kelvin floatValue] - 273.15];
    NSNumber *fTemp = [NSNumber numberWithDouble: ([cTemp doubleValue] * 1.8 + 32)];
    
    
    NSString *degreeSymbol = @"\u00B0";
    NSString *celsius = [NSString stringWithFormat:[formatter stringFromNumber:cTemp], degreeSymbol];
    NSString *fahrenheit = [NSString stringWithFormat:[formatter stringFromNumber:fTemp], degreeSymbol];

    
    NSDictionary *resultDict = @{
                                @"celsius": celsius,
                                @"fahrenheit": fahrenheit
                               };
    return resultDict;
}

-(NSString *) encodeURL: (NSString *) url{
    url = (NSString* )CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL,
                                                     (CFStringRef)url, NULL, (CFStringRef)@"&=? ", kCFStringEncodingUTF8));
    return url;
}

-(NSDictionary *) getCurrentWeatherDataForCity: (NSString *) locale {
    locale = [self encodeURL:locale];
    NSString * const kAPPID = @"bf4e3031d41de4faa78326104cf4447b";
    NSString *baseURL = @"http://api.openweathermap.org/data/2.5/weather";
    NSString *location = locale;
    
    NSString *urlString = [NSString stringWithFormat:@"%@?q=%@&APPID=%@", baseURL, location, kAPPID];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString: urlString]];
    NSData *response  = [NSURLConnection sendSynchronousRequest:request
                                              returningResponse:nil error:nil];
    
    NSError *jsonParsingError = nil;
    NSDictionary *results = [NSJSONSerialization JSONObjectWithData:response
                                                      options:0 error:&jsonParsingError];
    return results;
}

-(NSDictionary *) currentTempDict: (NSDictionary *) weatherData {
    /* 
     this shit cray.
     conditionsDict is the dictionary within the array of the 'weather' 
     key of the 'weatherData'dictionary.
     see full weatherDict for more info
    */
    // NSDictionary *dataDict = [NSDictionary dictionaryWithDictionary:weatherData];
    
    WeatherCodes *codes = [[WeatherCodes alloc] init];
    
    NSDictionary *conditionsDict = [NSDictionary dictionaryWithDictionary:
                                                    [[NSArray arrayWithArray:
                                                      [weatherData objectForKey:@"weather"]] firstObject]];
    

    NSString *kelvinString = [[weatherData objectForKey:@"main"] objectForKey:@"temp"];
    NSNumber *inputKelvin = [NSNumber numberWithFloat:[kelvinString floatValue]];
    NSString *description = [conditionsDict objectForKey:@"description"];
    NSString *conditionId = [conditionsDict objectForKey:@"id"];
    NSString *icon = [conditionsDict objectForKey:@"icon"];
//    NSString *icon = [codes.allCodes objectForKey:[NSString stringWithString:conditionId]];

    
    NSDictionary *conditions = @{
                    @"description":description,
                    @"id":conditionId,
                    @"meteocon": [codes.allCodes objectForKey:icon]
                    };
    
    NSDictionary *temperatureDict = [self convertKelvin: inputKelvin];
    
    NSDictionary *dataDict = @{
                @"temperature":temperatureDict,
                @"conditions": conditions
                };
    
    return dataDict;
}
@end
