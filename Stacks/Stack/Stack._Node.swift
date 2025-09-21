
extension Stack {
    
    @usableFromInline
    internal class _Node {
        
        @usableFromInline
        internal var element: Element
        
        @usableFromInline
        internal var next: _Node?
        
        @usableFromInline
        internal init(element: Element, next: _Node? = nil) {
            self.element = element
            self.next = next
        }
    }
}
