
extension Stack.Iterator: IteratorProtocol {
    
    @inlinable
    public mutating func next() -> Element? {
        guard let node = _handle else {
            return nil
        }
        _handle = node.next
        return node.element
    }
}
