//
//  main.m
//  RemoteData
//
//  Created by Alvaro Muir on 1/14/14.
//  Copyright (c) 2014 muiral. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        

        NSString *baseURL = @"http://api.openweathermap.org/data/2.5/weather";
        NSString *location = @"Brooklyn,NY,US";
        NSString * const kAPPID = @"bf4e3031d41de4faa78326104cf4447b";
        NSString *urlString = [NSString stringWithFormat:@"%@?q=%@&APPID=%@", baseURL, location, kAPPID];

        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString: urlString]];
        NSData *response  = [NSURLConnection sendSynchronousRequest:request
                                                 returningResponse:nil error:nil];
        
        NSError *jsonParsingError = nil;
        NSData *results = [NSJSONSerialization JSONObjectWithData:response
                                                           options:0 error:&jsonParsingError];
        
        
//        NSDictionary *currentWeather;
        
        NSLog(@"%@", results);
        
    }
    return 0;
}

