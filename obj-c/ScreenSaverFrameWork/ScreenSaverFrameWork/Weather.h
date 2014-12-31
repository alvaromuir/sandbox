//
//  Weather.h
//  ScreenSaverFrameWork
//
//  Created by Alvaro Muir on 1/14/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weather : NSObject

-(NSDictionary *) getCurrentWeatherDataForCity: (NSString *) locale;
-(NSDictionary *) currentTempDict: (NSDictionary *) weatherData;

@end
