
extension Stack: Equatable where Element: Equatable {
    
    @inlinable
    public static func == (lhs: Stack, rhs: Stack) -> Bool {
        for (lhElement, rhElement) in zip(lhs, rhs) {
            guard lhElement == rhElement else {
                return false
            }
        }
        return true
    }
}
