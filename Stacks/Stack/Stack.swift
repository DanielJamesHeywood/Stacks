
@frozen
public struct Stack<Element> {
    
    @usableFromInline
    internal var _head: _Node?
    
    @usableFromInline
    internal var _count: Int
    
    @usableFromInline
    internal var _version: _Version
    
    public init() {
        _head = nil
        _count = 0
        _version = _Version()
    }
}
