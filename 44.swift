func anyCommentElements <T, U where T: SequenceType, U: SequenceType, T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs: T, rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}

println(anyCommentElements([1, 2, 3], [3]))
println(anyCommentElements([1, 3, 5], [2, 4]))
println(anyCommentElements("abcdefg", "xdyz"))
println(anyCommentElements("abcdefg", "xyz"))
