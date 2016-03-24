//
//  main.m
//  Demo
//
//  Created by macbook pro on 3/7/16.
//  Copyright © 2016 berkaysebat.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSMutableArray+SortMethods.h"


int main(int argc, const char * argv[]) {
    
   
    @autoreleasepool {
        NSMutableArray *numberArray=[[NSMutableArray alloc]initWithObjects:@2,@1,@4,@3,@5, nil];
        
        
        
        
        for (int i=0; i<numberArray.count-1;i++) {
            for (int j=0; j<numberArray.count-1-i;j++)
            
                if ([numberArray objectAtIndex:i]>[numberArray objectAtIndex:i+1 ]) {
                    [numberArray exchangeObjectAtIndex:i withObjectAtIndex:i+1];
                    
                    
                }
            }
            
        
        
        
      //  for (int i=0; i<numberArray.count; i++) {
      //      NSLog(@"The current number is %@",[numberArray objectAtIndex:i]);
            
    //    }
       
    }
    
    NSMutableArray *insertion_array=[[NSMutableArray alloc]initWithObjects:@1,@30,@8,@100,@2,@50, nil];
    
    for (int j=1; j<insertion_array.count; j++) {
        int i = j;
        while(i>=0 && [[insertion_array objectAtIndex:(i-1)] intValue] > [[insertion_array objectAtIndex:i] intValue])
        {
            [insertion_array exchangeObjectAtIndex:i withObjectAtIndex:(i-1)];
            i--;
            
        }
            
        
    

   // }
  //  for (int i=0; i<insertion_array.count; i++) {
  //      NSLog(@"The current number is %@",[insertion_array objectAtIndex:i]);
        
    }
    NSMutableArray *shell_sort=[[NSMutableArray alloc]initWithObjects:@40,@12,@1,@84,@55,@31, nil];
    
    for (NSInteger i = shell_sort.count / 2; i > 0; i = i / 2) {
        for (NSInteger j = i; j < shell_sort.count; j++) {
            for (NSInteger k = j - i; k >= 0; k = k - i) {
                if ([shell_sort[k + 1] floatValue] >= [shell_sort[k] floatValue]) {
             //       NSLog(@"the current object is %@",shell_sort[k]);
               //     NSLog(@"the object the right of k is %@",shell_sort[k+1]);
                    break;
                }
                else {
                    [shell_sort exchangeObjectAtIndex:k withObjectAtIndex:(k + i)];
                 //   NSLog(@"The object at k is %@",shell_sort[k]);
                   // NSLog(@"The object being replaced is %@",shell_sort[k+i]);
                }
            }
        }
    }

    
    for (int i=0; i<shell_sort.count; i++) {
   //     NSLog(@"The current number is %@",[shell_sort objectAtIndex:i]);
        
    }
    
   
    NSMutableArray *quick_sort=[[NSMutableArray alloc]initWithObjects:@11,@12,@1,@300,@122,@150,@365,@3,@63,@177,@21, nil];
    NSInteger length=quick_sort.count-1;
    int a =0;
   
    
   
    
    [quick_sort quickSortWithLeftIndex:a withRightIndex:length];
    
    
    return 0;
}
