var firstForLoop = 0
for i in 0..<4 {
  firstForLoop += i
}
println("firstForLoop = \(firstForLoop)")

var secondForLoop = 0
for var i = 0; i < 4; ++i {
  secondForLoop += i
}
println("secondForLoop = \(secondForLoop)")

var thirdForLoop = 0
for i in 0...4 {
  thirdForLoop += i
}
println("thirdForLoop = \(thirdForLoop)")


