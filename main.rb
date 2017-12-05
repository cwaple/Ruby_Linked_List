require "./linked_list"

linked_list = LinkedList.new

linked_list.append(1)
linked_list.append(2)
linked_list.append(3)


puts linked_list.at(0).get_value
puts linked_list.at(1).get_value
puts linked_list.at(2).get_value
puts linked_list.contains?(2)
puts linked_list.pop
puts linked_list.contains?(3)
puts linked_list.find(2)
