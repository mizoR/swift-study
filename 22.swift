var numbers = [20, 19, 7, 12]

let result = numbers.map({
  (number: Int) -> Int in
  let result = 3 * number
  return result
})

println("numbers = \(numbers)")
println("result = \(result)")

let result2 = numbers.map({ number in 3 * number })
println("result2 = \(result2)")
