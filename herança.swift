class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeSound() {
        // Implementação padrão para fazer um som genérico
        print("O animal faz um som.")
    }
}

class Dog: Animal {
    override func makeSound() {
        print("O cachorro late: Woof woof!")
    }
}

class Cat: Animal {
    override func makeSound() {
        print("O gato mia: Meow meow!")
    }
}

let animals: [Animal] = [
    Dog(name: "Rex"),
    Cat(name: "Whiskers"),
    Dog(name: "Buddy"),
    Cat(name: "Mittens")
]

// Filtrar apenas os cães da lista de animais
let dogs = animals.filter { $0 is Dog }

for dog in dogs {
    if let dog = dog as? Dog {
        print("Nome do cachorro: \(dog.name)")
    }
}
