#import "FactorialCalculator.h"

@interface FactorialCalculator ()
- (BOOL)isInputValid:(NSUInteger)n;
@end

@implementation FactorialCalculator

- (BOOL)isInputValid:(NSUInteger)n {
    return n <= 20;
}

- (unsigned long long)factorialFor:(NSUInteger)n {
    if (![self isInputValid:n]) {
        return 0;
    }

    unsigned long long result = 1;
    for (NSUInteger i = 2; i <= n; i++) {
        result *= i;
    }
    return result;
}

- (void)printFirstTenFactorials {
    NSLog(@"n\tfactorial");
    for (NSUInteger n = 1; n <= 10; n++) {
        NSLog(@"%lu\t%llu", (unsigned long)n, [self factorialFor:n]);
    }
}

@end
