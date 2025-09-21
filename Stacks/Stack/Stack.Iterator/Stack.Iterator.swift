
extension Stack {
    
    @frozen
    public struct Iterator {
        
        @usableFromInline
        internal var _handle: _Node?
        
        @inlinable
        internal init(_base: Stack) {
            _handle = _base._head
        }
    }
}
