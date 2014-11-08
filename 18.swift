func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
  var min = scores[0]
  var max = scores[0]
  var sum = 0

  for score in scores {
    if score > max {
      max = score
    } else if score < min {
      min = score
    }
    sum += score
  }

  return (min, max, sum)
}

let statistic = calculateStatistics([5, 3, 100, 3, 9])

println("statistic = \(statistic)")
println("statistic.min = \(statistic.min)")
println("statistic.max = \(statistic.max)")
println("statistic.sum = \(statistic.sum)")
println("statistic.0 = \(statistic.0)")
println("statistic.1 = \(statistic.1)")
println("statistic.2 = \(statistic.2)")
