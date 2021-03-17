require 'rgl/adjacency'

class GraphBuilder #é um repository? ele acessa banco e só monta uma estrutura
  class << self
    def call
      graph = RGL::DirectedAdjacencyGraph.new
      nodes = Node.all.map { |node| node.name }
      nodes.each do |node|
        graph.add_vertex(node)
      end
      edge_values.each { |(node1, node2), _w| graph.add_edge(node1, node2) }
      graph
    end
    
    def edge_values
      edge_values = {}
      edges = Edge.all
      edges.each do |edge|
        edge_values[[edge.source, edge.destiny]] = edge.value
      end
      edge_values
    end
  end
end
