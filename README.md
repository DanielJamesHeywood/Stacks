This project is deprecated. Further progress is impossible due to fundamental design decisions. In this case... Stack is a misleading name for this data structure, what this really is
is a very lazily allocated buffer type where consequentially you can only operate on the head. This is implemented as a linked list so modifying the first n elements of a copy is O(n)
instead of O(count). Logically this does not work as a stack because efficent iteration is only possible backwards. The advantages this type offers in certain situations are offset by
it's logistical cost. It is too specialised. It is only really useful as a stack which again is probably better implemented as a buffer, not even a circular buffer for memory coherency
reasons, this was deprecated in favour of a doubly linked list approach which was deprecated in favour of a circular buffer.
