
extension Stack {
    
    public struct Index {
        
        @usableFromInline
        internal unowned var _handle: _Node?
        
        @usableFromInline
        internal var _offset: Int
        
        @usableFromInline
        internal let _version: _Version
    }
}

extension Stack.Index {
    
    @inlinable
    internal func _ensureValid(for base: Stack) {
        precondition(_version === base._version)
    }
    
    @inlinable
    internal func _ensureValid(with other: Stack.Index) {
        precondition(_version === other._version)
    }
}
