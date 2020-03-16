#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {

    NSNumber *priceForItem = [bill objectAtIndex:index];

    NSNumber *priceAllItem = [bill valueForKeyPath:@"@sum.self"];

    int annaPay = ([priceAllItem intValue] - [priceForItem intValue])/2;

    if (annaPay == [sum intValue]) {
        return @"Bon Appetit";
    } else {
        int brianReturn = [sum intValue] - annaPay;
        NSString *finalString = @(brianReturn).stringValue;
        return finalString;
    }
}

@end
