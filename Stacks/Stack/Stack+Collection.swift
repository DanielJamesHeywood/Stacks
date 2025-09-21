
extension Stack: Collection {
    
    @inlinable
    public var startIndex: Index {
        return Index(_startOf: self)
    }
    
    @inlinable
    public var endIndex: Index {
        return Index(_endOf: self)
    }
    
    @inlinable
    public subscript(position: Index) -> Element {
        position._ensureValid(for: self)
        guard let node = position._handle else {
            preconditionFailure()
        }
        return node.element
    }
    
    @inlinable
    public func index(after index: Index) -> Index {
        var newIndex = index
        formIndex(after: &newIndex)
        return newIndex
    }
    
    @inlinable
    public func formIndex(after index: inout Index) {
        index._ensureValid(for: self)
        guard let node = index._handle else {
            preconditionFailure()
        }
        index._handle = node.next
        index._offset += 1
    }
}
