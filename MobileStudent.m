//
//  MobileStudent.m
//  1.3-StudentRoster
//
//  Created by Kimberly Skipper on 11/9/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "MobileStudent.h"

@implementation MobileStudent

+ (MobileStudent *)emailGetsAgeWithDictionary:(NSDictionary *)emailGetsAgeDictionary
{
    MobileStudent *emailGetsAge = nil;
    if (emailGetsAgeDictionary)
    {
        emailGetsAge = [[MobileStudent alloc] init];
        emailGetsAge.name = emailGetsAgeDictionary[@"name"];
        emailGetsAge.userName = emailGetsAgeDictionary[@"userName"];
        emailGetsAge.email = emailGetsAgeDictionary[@"email"];
        emailGetsAge.age = [emailGetsAgeDictionary[@"age"] integerValue];
    }


 /*   + (GroceryItem *)groceryItemWithDictionary:(NSDictionary *)groceryItemDictionary  // declare a method
    {
        GroceryItem *anItem = nil;
        if (groceryItemDictionary)
        {
            anItem = [[GroceryItem alloc] init];  //alloc is making space of the item we are calling.  initialized the item and park it in the space
            anItem.name = groceryItemDictionary[@"name"];
            anItem.category =groceryItemDictionary [@"category"];
            anItem.aisle = [groceryItemDictionary[@"aisle"] integerValue];
        }
        
        return anItem;
    }

   */     
        
        
        
    return emailGetsAge;

}

@end
    
