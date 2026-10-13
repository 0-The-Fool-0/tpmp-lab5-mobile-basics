#import <Foundation/Foundation.h>
#import "FactorialCalculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FactorialCalculator *calculator = [[FactorialCalculator alloc] init];
        [calculator printFirstTenFactorials];
    }
    return 0;
}
