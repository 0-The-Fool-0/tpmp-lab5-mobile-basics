#import "ArrayProcessor.h"

@interface ArrayProcessor ()
- (BOOL)isValidIndex:(NSUInteger)index forArray:(NSArray *)array;
@end

@implementation ArrayProcessor

- (NSNumber *)sumOfImmutableNumbers {
    NSArray *numbers = @[@10, @20, @30, @40, @50];
    NSInteger sum = 0;
    for (NSNumber *value in numbers) {
        sum += value.integerValue;
    }
    NSLog(@"Immutable array: %@", numbers);
    NSLog(@"Sum of all elements: %ld", (long)sum);
    return @(sum);
}

- (BOOL)isValidIndex:(NSUInteger)index forArray:(NSArray *)array {
    return index < array.count;
}

- (void)demoMutableArrayOperations {
    NSArray *immutable = @[@"A", @"B", @"C"];
    NSLog(@"Immutable array: %@", immutable);
    NSLog(@"Immutable count: %lu", (unsigned long)immutable.count);

    NSMutableArray *mutable = [[NSMutableArray alloc] init];
    NSLog(@"Empty mutable array: %@", mutable);
    NSLog(@"Mutable count: %lu", (unsigned long)mutable.count);

    [mutable addObject:@"10"];
    [mutable addObject:@"20"];
    [mutable addObject:@"30"];
    NSLog(@"After console-like input: %@", mutable);

    [mutable addObject:@"40"];
    NSLog(@"After addObject: %@", mutable);

    [mutable insertObject:@"15" atIndex:1];
    NSLog(@"After insert at index 1: %@", mutable);

    [mutable removeLastObject];
    NSLog(@"After removeLastObject: %@", mutable);

    if ([self isValidIndex:1 forArray:mutable]) {
        [mutable removeObjectAtIndex:1];
    }
    NSLog(@"After remove at index 1: %@", mutable);

    [mutable removeAllObjects];
    NSLog(@"After removeAllObjects: %@", mutable);
}

@end
