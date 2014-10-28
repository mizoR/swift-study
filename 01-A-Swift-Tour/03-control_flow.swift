println("\n# page 10")

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
  if score > 50 {
    teamScore += 3
  } else {
    teamScore += 1
  }
}
println("teamScore is \(teamScore)")

println("\n# page 11")

var optionalString: String? = "Hello"
println(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
  greeting = "Hello, \(name)"
}
println(greeting)

println("\n# page 13")

let vegitable = "red pepper"
var vegitableComment: String = "None"

switch vegitable {
case "celery":
  vegitableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
  vegitableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
  vegitableComment = "Is it a spicy \(x)?"
default:
  vegitableComment = "Everything tastes good in soup."
}

println("vegitable is \(vegitable)")
println("vegitableComment is \(vegitableComment)")
