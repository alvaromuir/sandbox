//
//  main.m
//  HumanTime
//
//  Created by Alvaro Muir on 1/12/14.
//  Copyright (c) 2014 Alvaro Muir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DateTime.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        DateTime *myTime = [DateTime new];
        
        // for testing, setting specific time
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSCalendarUnit units = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit |
                                NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
        NSDateComponents *comps = [calendar components:units fromDate:myTime.date];
        
        [comps setHour: 13];
        [comps setMinute: 30];
        
        NSDate *testTimeStamp = [calendar dateFromComponents:comps];
        [myTime setDate: testTimeStamp];
        
        
        // for testing
        NSLog(@"%@", [myTime dateTimeDict]);
        
    }
    return 0;
}

