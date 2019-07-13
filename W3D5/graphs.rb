
require 'byebug'
require 'set'

class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
      self.val = val
      self.neighbors = []
    end 

end

def bfs(starting_node, target_value)
    #debugger
    set = Set.new()
    queue = [starting_node]
    while queue.length > 0
        #Take next node out of queue and visit
        current_node = queue.shift

        #return val if target is found
        return current_node.val if current_node.val == target_value

        #add node to set to make sure node will not be revisited
        set << current_node unless set.include?(current_node)

        #add current nodes children that doent exist in set to queue before losing it forever
        queue.concat(current_node.neighbors.select {|ele| !set.include?(ele)})
    end
    return nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "f") || "Returned nil because the graph is not contiguous, node is inaccessible or does not exist"


=begin
byebug references below

display queue
display current_val
display target_value

=end