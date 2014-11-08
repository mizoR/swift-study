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
