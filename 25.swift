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

class EquilateralTriangle: NamedShape {
  var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
      self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

  var perimeter: Double {
    get {
      return 3.0 * sideLength
    }
    set {
      sideLength = newValue / 3.0
    }
  }

  override func simpleDescription() -> String {
    return "An equilateral triangle with sides of length \(sideLength)."
  }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")

println("perimeter = \(triangle.perimeter)")

triangle.perimeter = 0.9
println(triangle.simpleDescription())
