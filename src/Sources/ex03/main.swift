import Foundation

class Coffee {
    var name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

class Barista {
    var firstName: String
    var lastName: String
    var experience: Int
    
    init(firstName: String, lastName: String, experience: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.experience = experience
    }
    
    func brew(coffee: Coffee) {
        print("Processing brewing coffee...")
        print("Your \(coffee.name) is ready!")
    }
}

class CoffeeMachine {
    var model: String
    
    init(model: String) {
        self.model = model
    }
    
    func brew(coffee: Coffee) {
        let brewingTime = 60 // 1 minute
        let volume = 0.3 // L
        let timeLeft = brewingTime / Int(volume + 1)
        print("Coffee is brewing. \(timeLeft / 60) minute - time left")
        print("Coffee is ready!")
    }
}

let menu = [
    Coffee(name: "Cappuccino", price: 2),
    Coffee(name: "Americano", price: 1.5),
    Coffee(name: "Latte", price: 2.3)
]

let start = Day4()

class Day4 {
    
    init() {
        printMenu()
        chooseBarista()
    }
    
    func printMenu() {
        print("Choose barista:")
        print("1. Man")
        print("2. Machine")
    }
    
    func printMenuOfCoffeeforMan() {
        print("Choose coffee in menu:")
        for (index, coffee) in menu.enumerated() {
            print("\(index + 1). \(coffee.name) \(coffee.price)$")
        }
    }
    
    func printMenuOfCoffeeforMachine() {
        print("Choose coffee in menu:")
        for (index, coffee) in menu.enumerated() {
            let discountedPrice = coffee.price * 0.9
            print("\(index + 1). \(coffee.name) \(discountedPrice)$")
        }
    }
    
    
    func chooseCoffeeInMenu(_ man:Bool) -> Int {
        while true {
            if let input  = readLine(), let number = Int(input), number >= 1, number <= 3  {
                return number
            } else {
                print("Try again!")
                man ? printMenuOfCoffeeforMan() : printMenuOfCoffeeforMachine()
            }
        }
    }
    
    
    func chooseBarista() {
        while true {
            if let input  = readLine(), let number = Int(input), number >= 1, number <= 2  {
                switch number {
                case 1:
                    let barista = Barista(firstName: "User", lastName: "Playerov", experience: 5)
                    printMenuOfCoffeeforMan()
                    let res = chooseCoffeeInMenu(true)
                    let coffee = menu[res - 1]
                    barista.brew(coffee: coffee)
                    exit(1)
                default:
                    let coffeeMachine = CoffeeMachine(model: "BaristaPro")
                    printMenuOfCoffeeforMachine()
                    let res = chooseCoffeeInMenu(false)
                    let coffee = menu[res - 1]
                    coffeeMachine.brew(coffee: coffee)
                    exit(1)
                }
            } else {
                print("Try again!")
                printMenu()
            }
        }
    }
    
}
