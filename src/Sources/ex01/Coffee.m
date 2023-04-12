#import "Coffee.h"

@implementation Coffee

- (instancetype)initWithName:(NSString *)name price:(float)price {
    self = [super init];
    if (self) {
        _name = name;
        _price = price;
    }
    return self;
}

@end
