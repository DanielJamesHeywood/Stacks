
extension Stack.Index: Comparable {
    
    @inlinable
    public static func < (lhs: Stack.Index, rhs: Stack.Index) -> Bool {
        lhs._ensureValid(with: rhs)
        return lhs._offset < rhs._offset
    }
}
