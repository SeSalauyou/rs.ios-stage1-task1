#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    
    NSMutableArray *resultArray = [NSMutableArray new];
    NSMutableArray *operationArray = [NSMutableArray arrayWithArray:sadArray];
    NSUInteger startCount = operationArray.count;
    NSUInteger finishCount = 0;


    while (startCount != finishCount) {
        startCount = operationArray.count;
        resultArray = [NSMutableArray new];;
        [resultArray addObject:operationArray.firstObject];

        for (NSInteger i = 1; i < operationArray.count - 1; i++) {
            NSNumber *element = [operationArray objectAtIndex:i];
            NSNumber *elementBefore = [operationArray objectAtIndex:i - 1];
            NSNumber *elementAfter = [operationArray objectAtIndex:i + 1];

            int sumNearElements = [elementBefore intValue] + [elementAfter intValue];


            if (sumNearElements > [element intValue]) {
                [resultArray addObject:[operationArray objectAtIndex:i]];
            }
        }

        [resultArray addObject:operationArray.lastObject];
        finishCount = resultArray.count;
        operationArray = resultArray;
    }

    NSArray *final = [NSArray arrayWithArray:resultArray];

    return final;

}

@end
