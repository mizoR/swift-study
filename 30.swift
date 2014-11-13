enum Rank: Int {
  case Ace = 1
  case Tow, Three, Four, Five, Six, Seven, Eight, Nine, Ten
  case Jack, Queen, King
  func simpleDescription() -> String {
    switch self {
    case .Ace:
      return "ace"
    case .Jack:
      return "jack"
    case .Queen:
      return "queen"
    case .King:
      return "king"
    default:
      return String(self.rawValue)
    }
  }
}

let ace = Rank.Ace

println("                     ace = \(ace)")
println(" ace.simpleDescription() = \(ace.simpleDescription())")
println("            ace.rawValue = \(ace.rawValue)")

let four = Rank.Four

println("                    four = \(four)")
println("four.simpleDescription() = \(four.simpleDescription())")
println("           four.rawValue = \(four.rawValue)")

if let convertedRank = Rank.init(rawValue: 3) {
  let threeDescription = convertedRank.simpleDescription()

  println(threeDescription)
}
