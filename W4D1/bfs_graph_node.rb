require 'set'
class GraphNode
    attr_accessor :value, :neighbors
    def initialize(value)
        self.value = value
        self.neighbors = []
    end
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

def bfs(starting_node, target_value)
    visited = Set.new()
    queue = [starting_node]
    until queue.empty?
        node = queue.shift
        if visited.include?(node) != false
            return node.value if node.value == target_value
        else
            visited.add(node)
            queue += starting_node.neighbors
        end
    end
    nil
end

p bfs(f, 'x')