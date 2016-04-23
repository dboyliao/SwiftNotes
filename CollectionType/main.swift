import Foundation

let data:[Double] = [1, 2, 3, 4]
var generator = data.generate() // `generate`: method defined in SequeceType protocol. 
                                // It return an object of type GeneratorType which is a protocol that defines the method `next`.

print("Using generator:")
while let e = generator.next() {
    print(e)
}

print()

// equivalent to:
print("Using for loop:")
for e in data {
    print(e)
}