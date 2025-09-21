
extension Stack: Equatable where Element: Equatable {
    
    @inlinable
    public static func == (lhs: Stack, rhs: Stack) -> Bool {
        guard lhs._count == rhs._count else {
            return false
        }
        var lhHandle = lhs._head
        var rhHandle = rhs._head
        while let lhNode = lhHandle, let rhNode = rhHandle, lhNode !== rhNode {
            guard lhNode.element == rhNode.element else {
                return false
            }
        }
        return true
    }
}
