func sumOf(numbers: Int...) -> Int {
  var sum = 0
  for number in numbers {
    sum += number
  }
  return sum
}

let sum1 = sumOf()
let sum2 = sumOf(42, 567, 2342)

println("sum1 = \(sum1)")
println("sum2 = \(sum2)")
