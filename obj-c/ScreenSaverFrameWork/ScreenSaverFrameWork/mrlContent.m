//
//  mrlContent.m
//  ScreenSaverFrameWork
//
//  Created by Alvaro Muir on 1/12/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import "mrlContent.h"
#import "DateTime.h"
#import "Utilities.h"
#import "Weather.h"

@implementation mrlContent

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    NSColor *backgroundColor = [NSColor colorWithCalibratedRed:(37.0/255.0)
                                                         green:(36.0/255.0)
                                                          blue:(36.0/255.0)
                                                         alpha:(255.0/255.0)
                                ];
    
    NSColor *foregroundColor = [NSColor colorWithCalibratedRed:(230.0/255.0)
                                                         green:(230.0/255.0)
                                                          blue:(230.0/255.0)
                                                         alpha:(255.0/255.0)
                                ];
    NSRect bounds = self.bounds;
    [backgroundColor set];
    NSRectFill(bounds);
    
    
    DateTime *currentDateTime = [[DateTime alloc] init];
    
    
    // testing
//    NSCalendar *calendar = [NSCalendar currentCalendar];
//    NSCalendarUnit units = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit |
//    NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
//    NSDateComponents *comps = [calendar components:units fromDate:currentDateTime.date];
//    
//    [comps setHour: 19];
//    [comps setMinute: 30];
//    
//    NSDate *testTimeStamp = [calendar dateFromComponents:comps];
//    [currentDateTime setDate: testTimeStamp];
    
    // end testing
    
    
    
    NSDictionary *dateTimeDict = [currentDateTime dateTimeDict];
    // NSLog(@"%@",  dateTimeDict);
    
    CGFloat posX = (NSWidth (bounds)* 0.03);
    CGFloat posY = (NSWidth (bounds)* 0.12);
    CGFloat widthX = (NSWidth (bounds)*0.20);
    CGFloat widthY = (NSWidth (bounds)*0.15);
    NSRect contentBounds = NSMakeRect( posX, posY, widthX, widthY );
    
    NSMutableParagraphStyle *alignTextRight = [[NSMutableParagraphStyle alloc] init];
    [alignTextRight setAlignment:NSRightTextAlignment];
    
    // for testing
    [[NSColor whiteColor] set];
    // NSFrameRectWithWidth(contentBounds, 1);

    
    
    
    NSString *timePrefix, *timeLead, *timeString;
    NSString *hour = [[dateTimeDict objectForKey:@"time"] objectForKey:@"hour"];
    
    
    if([[dateTimeDict objectForKey:@"time"] valueForKey:@"prefix"] != nil) {
        timePrefix = [[dateTimeDict objectForKey:@"time"] objectForKey:@"prefix"];
        timeLead =  [[dateTimeDict objectForKey:@"time"] objectForKey:@"lead"];
        timeString = [NSString stringWithFormat:@"%@ %@", timeLead, hour];

    }
    else
        timeString = [[dateTimeDict objectForKey:@"time"] objectForKey:@"timeString"];
    
    
    
    // draw time prefix, if applicable
    NSRect timePrefixBounds = NSMakeRect(contentBounds.origin.x,
                                         contentBounds.origin.y * 2.1,
                                         contentBounds.size.width,
                                         contentBounds.size.height * 0.2);
    //  NSFrameRectWithWidth(timePrefixBounds, 1);
    NSMutableDictionary *timePrefixAttribs = [NSMutableDictionary dictionaryWithDictionary: @{
                                              NSForegroundColorAttributeName: foregroundColor,
                                              NSParagraphStyleAttributeName: alignTextRight,
                                              NSFontAttributeName: [NSFont fontWithName: @"BentonSans Extra Light"
                                                                                   size: contentBounds.size.height * 0.2]
                                              }];
    [timePrefix drawInRect:timePrefixBounds withAttributes:timePrefixAttribs];
    
    
    
    
    // draw time hour
    NSRect hourBounds = NSMakeRect(contentBounds.origin.x,
                                         timePrefixBounds.origin.y - contentBounds.size.height * 0.17,
                                         contentBounds.size.width,
                                         contentBounds.size.height * 0.20);
    // NSFrameRectWithWidth(hourBounds, 1);
    NSMutableDictionary *timeStringAttribs = [NSMutableDictionary dictionaryWithDictionary: @{
                                              NSForegroundColorAttributeName: foregroundColor,
                                              NSParagraphStyleAttributeName: alignTextRight,
                                              NSFontAttributeName: [NSFont fontWithName: @"BentonSans Bold"
                                                                                   size: contentBounds.size.height * 0.2]
                                              }];
    [timeString drawInRect:hourBounds withAttributes:timeStringAttribs];
    
    
    
    // Draw date line
    NSString *dateString = dateTimeDict[@"date"];
    NSRect dateBounds = NSMakeRect(contentBounds.origin.x,
                                   hourBounds.origin.y - contentBounds.size.height * .09,
                                   contentBounds.size.width,
                                   contentBounds.size.height * 0.15);
    // NSFrameRectWithWidth(dateBounds, 1);
    NSMutableDictionary *dateStringAttribs = [NSMutableDictionary dictionaryWithDictionary: @{
                                              NSForegroundColorAttributeName: foregroundColor,
                                              NSParagraphStyleAttributeName: alignTextRight,
                                              NSFontAttributeName: [NSFont fontWithName: @"Roboto Slab Thin"
                                                                                   size: contentBounds.size.height * 0.10]
                                              }];
    [dateString drawInRect:dateBounds withAttributes:dateStringAttribs];
    
    
    // Get weather
    Weather *currentWeather = [[Weather alloc] init];
    NSDictionary *weatherDict = [currentWeather currentTempDict:[currentWeather getCurrentWeatherDataForCity:@"New York, NY,US"]];
    NSDictionary *temperature = [weatherDict objectForKey:@"temperature"];
    NSDictionary *condition = [NSDictionary dictionaryWithDictionary:[weatherDict objectForKey:@"conditions"]];


    
    
    // Draw weather icon
    NSString *meteocon = [condition objectForKey:@"meteocon"];
    NSRect iconBounds = NSMakeRect(contentBounds.origin.x,
                                   dateBounds.origin.y - dateBounds.size.height * 2.1,
                                   contentBounds.size.width * 0.3,
                                   contentBounds.size.height * 0.3);
    
    NSMutableDictionary *iconStringAttribs = [NSMutableDictionary dictionaryWithDictionary: @{
                                              NSForegroundColorAttributeName: foregroundColor,
                                              NSParagraphStyleAttributeName: alignTextRight,
                                              NSFontAttributeName: [NSFont fontWithName: @"Meteocons Regular"
                                                                                   size: iconBounds.size.height]
                                  }];
//    NSFrameRectWithWidth(iconBounds, 1);
    [meteocon drawInRect:iconBounds withAttributes:iconStringAttribs];
    
    
    // Draw weather info
    NSString *fahrenheit = [temperature objectForKey:@"fahrenheit"];
    NSString *desciption = [condition objectForKey:@"description"];
    NSString *weatherDetalsString = [NSString stringWithFormat:@"%@° - %@", fahrenheit,desciption];
    NSRect weatherDetailsBounds = NSMakeRect(iconBounds.origin.x + iconBounds.size.width,
                                             iconBounds.origin.y * 0.97,
                                             contentBounds.size.width * 0.7,
                                             contentBounds.size.height * 0.3);
    
    NSMutableDictionary *weatherDetailsAttribs = [NSMutableDictionary dictionaryWithDictionary: @{
                                                  NSForegroundColorAttributeName: foregroundColor,
                                                  NSParagraphStyleAttributeName: alignTextRight,
                                                  NSFontAttributeName: [NSFont fontWithName: @"BentonSans UltraCondensed Medium"
                                                                                       size: weatherDetailsBounds.size.height * 0.5]
                                                  }];

//    NSFrameRectWithWidth(weatherDetailsBounds, 1);
    [weatherDetalsString drawInRect:weatherDetailsBounds withAttributes:weatherDetailsAttribs];
    
    
    // Draw location
    NSString *locationString = [condition objectForKey:@"name"];
    NSRect locationStringBounds = NSMakeRect(weatherDetailsBounds.origin.x,
                                             weatherDetailsBounds.origin.y,
                                             weatherDetailsBounds.size.width,
                                             contentBounds.size.height * 0.15);
    
    NSMutableDictionary *locationStringAttibs = [NSMutableDictionary dictionaryWithDictionary: @{
                                                 NSForegroundColorAttributeName: foregroundColor,
                                                 NSParagraphStyleAttributeName: alignTextRight,
                                                 NSFontAttributeName: [NSFont fontWithName: @"BentonSans Book"
                                                                                      size: locationStringBounds.size.height * 0.7]
                                                 }];
//    NSFrameRectWithWidth(locationStringBounds, 1);
    [locationString drawInRect:locationStringBounds withAttributes:locationStringAttibs];
}

@end
