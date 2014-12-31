//
//  main.m
//  FileManager
//
//  Created by Alvaro Muir on 11/9/11.
//  Copyright 2011 MASSForward. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSString        *fName =@"testfile";
    NSString        *path;
    NSFileManager   *fm;
    NSDictionary    *attr;
    
    fm = [NSFileManager defaultManager];
    
    // get current path
    path = [fm currentDirectoryPath];
    NSLog(@"The current path is %@", path);
    
    // check test file existance
    if ([fm fileExistsAtPath: fName] == NO){
        NSLog(@"File doesn't exist");
        return 1;
    }
    
    // make a copy
    if ([fm copyItemAtPath:fName toPath: @"newfile" error: NULL] == NO){
        NSLog(@"Copy failed!");
        return 2;
    }

    // test if files are equal
    if ([fm contentsEqualAtPath:fName andPath: @"newfile"] == NO){
        NSLog(@"Files are NOT equal!");
    return 3;
    }
    
    // rename copy
    if ([fm moveItemAtPath: @"newfile" toPath: @"newfile2" error: NULL] == NO){
        NSLog(@"File rename failed!");
        return 4;
    }
    
    // get file size
    if ((attr = [fm attributesOfItemAtPath: @"newfile2" error:NULL]) == nil){
        NSLog(@"Couldn't get file attributes!");
        return 5;
    }
    NSLog(@"File size is %llu bytes", [[attr objectForKey: NSFileSize] unsignedLongLongValue]);
    
    // delete original file
    if ([fm removeItemAtPath: fName error: NULL] == NO){
        NSLog(@"File deletion failed!");
        return 6;
    }
    
    NSLog(@"All operations successful");
    
    // display  the contents of newly created file
    NSLog(@"%@", [NSString stringWithContentsOfFile: @"newfile2" encoding:NSUTF8StringEncoding error:NULL]);
    
    [pool drain];
    return 0;
}