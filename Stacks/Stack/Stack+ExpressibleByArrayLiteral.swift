
extension Stack: ExpressibleByArrayLiteral {
    
    @inlinable
    public init(arrayLiteral elements: Element...) {
        self.init(reversing: elements.reversed())
    }
}
