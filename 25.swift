class NamedShape {
  var numberOfSides: Int = 0
    var name: String

    init(name: String) {
      self.name = name
    }

  func simpleDescription() -> String {
    return "A shape with \(numberOfSides) sides."
  }
}

class Square: NamedShape {
  var sideLength: Double

  init(sideLength: Double, name: String) {
    self.sideLength = sideLength
    super.init(name: name)
    numberOfSides = 4
  }

  func area() -> Double {
    return sideLength * sideLength
  }

  override func simpleDescription() -> String {
    return "A square with sides of length \(sideLength)."
  }
}

let square = Square(sideLength: 5.2, name: "my squire")
println("area = \(square.area())")
println(square.simpleDescription())
