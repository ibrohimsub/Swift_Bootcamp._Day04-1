#import <Foundation/Foundation.h>
#import "Coffee.h"

@interface Barista : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic) int experience;

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName experience:(int)experience;
- (void)brew:(Coffee *)coffee;

@end
