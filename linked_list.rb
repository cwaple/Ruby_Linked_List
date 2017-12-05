require "./node"

class LinkedList
  def initialize
    @head = nil
    @size = 0
  end

  # add new node to end of linked list
  def append(value = nil, next_node = nil)
    if @head == nil
      @head = Node.new(value, next_node)
      @size += 1
    else 
      temp_node = @head
      while temp_node.get_next_node != nil do
        temp_node = temp_node.get_next_node
      end
      temp_node.set_next_node(Node.new(value, next_node))
      @size +=1
    end
  end

  # add new node to front of list
  def prepend(value = nil)
    new_node = Node.new(value, @head)
    @head = new_node
    @size += 1
  end

  def size
    @size
  end

  def head
    @head
  end

  # head node is index = 0
  def at(index)
    if index >= size
      return nil
    else
      i = 0
      temp_node = @head
      while i != index do
        temp_node = temp_node.get_next_node
        i += 1
      end
      return temp_node
    end
  end

  def pop
    if size == 0 or size == 1
      @head = nil
      @size = 0
      return
    end
    current = @head
    until current.next_node.next_node == nil
      current = current.next_node
    end
    current.next_node = nil
  end

  # return true if value in linked list, false otherwise
  def contains?(value)
    temp_node = @head
    while temp_node != nil do 
      if temp_node.get_value == value
        return true
      else 
        temp_node = temp_node.get_next_node
      end
    end
    return false
  end

  # returns the index if found, nil if not found
  def find(value)

  end

  # prints linked list as string: (Value) -> (value) -> ....
  def to_s

  end

  def insert_at_index(index)
    
  end
    
  def remove_at_index(index)
    
  end
end