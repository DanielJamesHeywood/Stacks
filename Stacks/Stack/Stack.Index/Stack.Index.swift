
extension Stack {
    
    @frozen
    public struct Index {
        
        @usableFromInline
        internal unowned var _handle: _Node?
        
        @usableFromInline
        internal var _offset: Int
        
        @usableFromInline
        internal let _version: _Version
        
        @usableFromInline
        internal init(_startOf base: Stack) {
            _handle = base._head
            _offset = 0
            _version = base._version
        }
        
        @usableFromInline
        internal init(_endOf base: Stack) {
            _handle = nil
            _offset = base._count
            _version = base._version
        }
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
