
extension Stack {
    
    public struct Iterator {
        
        @usableFromInline
        internal var _handle: _Node?
        
        @usableFromInline
        internal init(_base: Stack) {
            _handle = _base._head
        }
    }
}
