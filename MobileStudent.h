//
//  MobileStudent.h
//  1.3-StudentRoster
//
//  Created by Kimberly Skipper on 11/9/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MobileStudent : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *userName;
@property (nonatomic) NSString *email;
@property (assign) NSInteger age;

+ (MobileStudent *)emailGetsAgeWithDictionary:(NSDictionary *)emailGetsAgeDictionary;



@end
