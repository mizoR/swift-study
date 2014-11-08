func returnFifteen() -> Int {
  var y = 10
  func add() {
    y += 5
  }
  add()
  return y
}

let fifteen = returnFifteen()
println("fifteen = \(fifteen)")

func makeIncrementer() -> (Int -> Int) {
  func addOne(number: Int) -> Int {
    return 1 + number
  }
  return addOne
}

var increment = makeIncrementer()
let eight = increment(7)
println("eight = \(eight)")
