
extension Stack: CustomStringConvertible {
    
    @inlinable
    public var description: String {
        return "[\(map({ element in "\(element)" }).joined(separator: ", "))]"
    }
}
