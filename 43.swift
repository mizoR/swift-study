enum OptionalValue<T> {
    case None
    case Some(T)
}

var possibleInteger: OptionalValue<Int> = .None
println(possibleInteger)

possibleInteger = .Some(100)
println(possibleInteger)

switch possibleInteger {
case let .None:
    println("None")
case let .Some(value):
    println("Some Integer: \(value)")
}

var possibleString: OptionalValue<String> = .Some("Hello")
println(possibleString)

switch possibleString {
case let .None:
    println("None")
case let .Some(value):
    println("Some String: \(value)")
}

