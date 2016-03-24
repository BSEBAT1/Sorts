//
//  NSMutableArray+SortMethods.m
//  Demo
//
//  Created by macbook pro on 3/15/16.
//  Copyright © 2016 berkaysebat.com. All rights reserved.
//

#import "NSMutableArray+SortMethods.h"

@implementation NSMutableArray (SortMethods)
- (NSMutableArray *)quickSortWithLeftIndex:(NSInteger)left withRightIndex:(NSInteger)right;
{
    NSInteger i = left;
    NSInteger j = right;
    
    id pivotalElement = nil;
    
    pivotalElement = self[(left + right) / 2];
      do {
        while (([self[i] floatValue] < [pivotalElement floatValue]) && (i < right)) {
            i++;
        }
        while (([pivotalElement floatValue] < [self[j] floatValue]) && (j > left)) {
            j--;
        }
        
        if (i <= j) {
            [self exchangeObjectAtIndex:i withObjectAtIndex:j];
            
            i++;
            j--;
        }
    }
    while (i <= j);
    NSLog(@"THE value of left is %ld",left);
    NSLog(@"The value of j is %ld",j);
    if (left < j) {
        [self quickSortWithLeftIndex:left withRightIndex:j];
    }
    NSLog(@"the value of i is %ld",i);
    NSLog(@"the value of right is %ld",right);
    if (i < right) {
        [self quickSortWithLeftIndex:i withRightIndex:right];
    }
    
    
    NSLog(@"The current status is %@",self); return self;
    
}
@end
