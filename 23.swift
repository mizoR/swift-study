var numbers = [20, 19, 7, 12]
let sortedNumbers = sorted(numbers) { $0 < $1 }

println("numbers = \(numbers)")
println("sortedNumbers = \(sortedNumbers)")
