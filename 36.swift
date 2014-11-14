protocol ExampleProtocol {
  var simpleDescription: String { get }
  mutating func adjust()
}

class SimpleClass: ExampleProtocol {
  var simpleDescription: String = "A very simple class."
  var anotherProperty: Int = 87642
  func adjust() {
    simpleDescription += " Now 100% adjusted"
  }
}

var a = SimpleClass()
a.adjust()

let aDescription = a.simpleDescription
println(aDescription)

struct SimpleStructure: ExampleProtocol {
  var simpleDescription: String = "A simple structure"
  mutating func adjust() {
    simpleDescription += " (adjusted)"
  }
}

var b = SimpleStructure()
b.adjust()

let bDescription = b.simpleDescription
println(bDescription)
