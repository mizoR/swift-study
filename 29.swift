class Counter {
  var count: Int = 0

  func incrementBy(amount: Int, numberOfTimes times: Int) {
    count += amount * times
  }

  func description() -> String {
    return "current count: \(count)"
  }
}

var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)
println(counter.description())
