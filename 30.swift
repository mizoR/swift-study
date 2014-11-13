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

enum Suit {
  case Spades, Hearts, Diamonds, Clubs

  func simpleDescription() -> String {
    switch self {
      case .Spades:
        return "spades"
      case .Hearts:
        return "hearts"
      case .Diamonds:
        return "diamonds"
      case .Clubs:
        return "clubs"
    }
  }

  func color() -> String {
    switch self {
      case .Spades, .Clubs:
        return "black"
      case .Hearts, .Diamonds:
        return "red"
    }
  }
}

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()

println(heartsDescription)
println(heartsColor)

struct Card {
  var rank: Rank
  var suit: Suit

  func simpleDescription() -> String {
    return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
  }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

println(threeOfSpades)
println(threeOfSpadesDescription)
