//
//  main.m
//  CoffeeKitDemo
//
//

#import <UIKit/UIKit.h>

extern void coffeekit_init (int argc, char **argv);
extern void coffeekit_evaluate (NSString *script_path);

int
main(int argc, char **argv)
{
    @autoreleasepool {
        coffeekit_init (argc, argv);

        NSBundle *mainBundle = [NSBundle mainBundle];

        NSString *script_nsstr = [[mainBundle bundlePath] stringByAppendingPathComponent:@"CoffeeKitDemo.js"];

        coffeekit_evaluate(script_nsstr);

        return UIApplicationMain (argc, argv, nil, @"AppDelegate");
    }

    return 0;
}

