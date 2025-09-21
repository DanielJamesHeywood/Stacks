
extension Stack: Sequence {
    
    @inlinable
    public func makeIterator() -> Iterator {
        return Iterator(_base: self)
    }
}
