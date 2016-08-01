//
//  main.m
//  RealFake


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *line = @"9999 9999 9999 9999";
//        NSString *line = @"9999 9999 9999 9993";
//        NSString *line = @"1234 5678 9876 5432";

        line = [[line mutableCopy] stringByReplacingOccurrencesOfString:@" " withString:@""];
//        NSLog(@"%@", line);
        
        NSInteger sum = 0;
        
        NSInteger i = 0;
        for (i = 0; i < line.length; i++) {
            
            if (i % 2 == 0) {
//                NSLog(@"%c", [line characterAtIndex:i]);
                
                sum += 2 * [[NSString stringWithFormat:@"%c", [line characterAtIndex:i]] integerValue];
            }
            else {
//                NSLog(@"%c", [line characterAtIndex:i]);
                sum += [[NSString stringWithFormat:@"%c", [line characterAtIndex:i]] integerValue];
            }
        }
//        NSLog(@"SUM: %lu", sum);
        
        if (sum % 10 == 0) {
            NSLog(@"Real");
        }
        else {
            NSLog(@"Fake");
        }
    
    
    }
    return 0;
}
