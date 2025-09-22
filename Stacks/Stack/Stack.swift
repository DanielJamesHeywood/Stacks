
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

extension Stack {
    
    @inlinable
    public init<S: Sequence>(reversing sequence: S) where S.Element == Element {
        self.init()
        for element in sequence {
            self.prepend(element)
        }
    }
}

extension Stack {
    
    @inlinable
    public mutating func prepend(_ newElement: Element) {
        _invalidateIndices()
        _head = _Node(element: newElement, next: _head)
        _count += 1
    }
}

extension Stack {
    
    @inlinable
    internal mutating func _invalidateIndices() {
        if !isKnownUniquelyReferenced(&_version) {
            _version = _Version()
        }
    }
}
