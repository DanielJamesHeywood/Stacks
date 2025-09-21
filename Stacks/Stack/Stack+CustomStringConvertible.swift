
extension Stack: CustomStringConvertible {
    
    @inlinable
    public var description: String {
        return "[\(map({ element in String(reflecting: element) }).joined(separator: ", "))]"
    }
}

extension Stack: CustomDebugStringConvertible {
    
    @inlinable
    public var debugDescription: String {
        return "Stack(\(self))"
    }
}
