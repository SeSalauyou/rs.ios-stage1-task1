#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {NSMutableArray *workArray = [NSMutableArray arrayWithArray:array];

    NSNumber *maxNumber = [workArray valueForKeyPath:@"@max.self"];
    NSNumber *minNumber = [workArray valueForKeyPath:@"@min.self"];

    NSMutableArray *arrayWOMin = [NSMutableArray arrayWithArray:workArray];
    [arrayWOMin removeObject:minNumber];

    NSMutableArray *arrayWOMax = [NSMutableArray arrayWithArray:workArray];
    [arrayWOMax removeObject:maxNumber];

    NSNumber *sumWOMin = [arrayWOMin valueForKeyPath:@"@sum.self"];
    NSNumber *sumWOMax = [arrayWOMax valueForKeyPath:@"@sum.self"];

    NSArray *resultArray = [NSArray arrayWithObjects:sumWOMax, sumWOMin, nil];

    return resultArray;
}


@end
