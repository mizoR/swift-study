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
