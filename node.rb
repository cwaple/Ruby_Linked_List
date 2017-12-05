class Node
  attr_accessor :value, :next_node

  def initialize(value = nil,next_node = nil)
    @value = value
    @next_node = next_node
  end

  def get_value
    @value
  end

  def get_next_node
    @next_node
  end

  def set_next_node(node)
    @next_node = node
  end
end