//
//  ViewController.m
//  objcStringChallenge
//
//  Created by Paulo Silva on 02/07/2020.
//  Copyright © 2020 Paulo Silva. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString* outTestString = @"12345";
    [self checkMoreThanOneRepeatedChar2:outTestString];
    // Do any additional setup after loading the view.
}

- (bool) checkMoreThanOneRepeatedChar: (NSString*) inputString {
    NSMutableString* lettersUsed = [NSMutableString string];
    
    for (int i=0; i< inputString.length; i++) {
        NSString* oneChar = [NSString stringWithFormat:@"%c", [inputString characterAtIndex:i]];
        if([lettersUsed rangeOfString:oneChar].location == NSNotFound) {
            NSLog(@"string does not contain character %c", [inputString characterAtIndex:i]);
            [lettersUsed appendFormat:@"%c", [inputString characterAtIndex:i]];
        } else {
            NSLog(@"string contains repeated characters!");
            return false;
        }
    }
    return true;
}

- (bool) checkMoreThanOneRepeatedChar2: (NSString*) inputString {
    NSMutableSet* ourSet = [NSMutableSet new];
    
    for(int i=0; i<inputString.length; i++) {
        //[ourSet addObject:[inputString characterAtIndex:i]];
        [ourSet addObject:[NSNumber numberWithInteger:[inputString characterAtIndex:i]]];
    }
    if(inputString.length == ourSet.count) {
        NSLog(@"string does not contain repeated characters");
        return true;
    } else {
        NSLog(@"string contains repeated characters");
        return false;
    }
}




@end
