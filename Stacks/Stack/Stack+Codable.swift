
extension Stack: Encodable where Element: Encodable {
    
    @inlinable
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.unkeyedContainer()
        for element in self {
            try container.encode(element)
        }
    }
}

extension Stack: Decodable where Element: Decodable {
    
    @inlinable
    public init(from decoder: any Decoder) throws {
        var reversed = Stack()
        var container = try decoder.unkeyedContainer()
        while !container.isAtEnd {
            reversed.prepend(try container.decode(Element.self))
        }
        self.init(reversing: reversed)
    }
}
