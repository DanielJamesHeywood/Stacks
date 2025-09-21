
extension Stack: Equatable where Element: Equatable {
    
    @inlinable
    public static func == (lhs: Stack, rhs: Stack) -> Bool {
        guard lhs.count == rhs.count else {
            return false
        }
        for (lhElement, rhElement) in zip(lhs, rhs) {
            guard lhElement == rhElement else {
                return false
            }
        }
        return true
    }
}
