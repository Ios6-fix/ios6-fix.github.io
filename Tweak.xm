#import <Foundation/Foundation.h>

%hook UIApplication

- (void)applicationDidBecomeActive:(UIApplication *)application {
    %orig;

    NSString *bundleID = [[NSBundle mainBundle] bundleIdentifier];

    if ([bundleID isEqualToString:@"com.apple.stocks"]) {
        NSLog(@"[StockFix] Stocks application detected.");
    }
}

%end
