#import "Barista.h"

@implementation Barista

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName experience:(int)experience {
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _experience = experience;
    }
    return self;
}

- (void)brew:(Coffee *)coffee {
    NSLog(@"Processing brewing coffee...");
    NSLog(@"Your %@ is ready!", coffee.name);
}

@end
