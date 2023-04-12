#import <Foundation/Foundation.h>

// class definition
@interface Coffee : NSObject // base class

@property (nonatomic, copy) NSString *name; // Property
@property (nonatomic) float price; // Property

- (instancetype)initWithName:(NSString *)name price:(float)price;

@end
