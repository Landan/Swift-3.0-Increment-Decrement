protocol NumericType {
    func +=(inout lhs: Self, rhs: Self)
    init(_ v: Int)
}

extension Int: NumericType {}
extension Float: NumericType {}
extension Double: NumericType {}

prefix operator ++ { }
postfix operator ++ { }
prefix operator -- { }
postfix operator -- { }

prefix func ++ <T: NumericType>(inout right: T) -> T {
    right += T(1)
    return right
}

postfix func ++ <T: NumericType>(inout left: T) -> T {
    let oldValue = left
    left += T(1)
    return oldValue
}

prefix func -- <T: NumericType>(inout right: T) -> T {
    right -= T(1)
    return right
}

postfix func -- <T: NumericType>(inout left: T) -> T {
    let oldValue = left
    left -= T(1)
    return oldValue
}