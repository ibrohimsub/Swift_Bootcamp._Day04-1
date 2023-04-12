#import <Foundation/Foundation.h>
#import "Barista.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Coffee *cappuccino = [[Coffee alloc] initWithName:@"Cappuccino" price:2.0];
        Coffee *americano = [[Coffee alloc] initWithName:@"Americano" price:1.5];
        Coffee *latte = [[Coffee alloc] initWithName:@"Latte" price:2.3];
        
        NSArray *menu = @[cappuccino, americano, latte];
        
        Barista *barista = [[Barista alloc] initWithFirstName:@"User" lastName:@"Playerov" experience:10];
        
        NSLog(@"Choose coffee in menu:");
        for (int i = 0; i < menu.count; i++) {
            Coffee *coffee = menu[i];
            NSLog(@"%d. %@ %.1f$", i+1, coffee.name, coffee.price);
        }
        
        int selectedCoffeeIndex = 0;
        do {
            scanf("%d", &selectedCoffeeIndex);
            if (selectedCoffeeIndex < 1 || selectedCoffeeIndex > menu.count) {
                NSLog(@"Try again!");
            }
        } while (selectedCoffeeIndex < 1 || selectedCoffeeIndex > menu.count);
        
        Coffee *selectedCoffee = menu[selectedCoffeeIndex-1];
        
        [barista brew:selectedCoffee];
    }
    return 0;
}
