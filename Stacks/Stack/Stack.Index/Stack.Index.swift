
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
