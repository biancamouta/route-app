require 'rgl/adjacency'

class TreeBuilder
  class<< self
    def call(prim_array_edges)
      @edges_tree = []
      graph = RGL::AdjacencyGraph.new

      Edge.all.each do |edge|
        prim_array_edges.each do |e|
          if e.source == edge.source && e.target == edge.destiny
            @edges_tree << edge
          end
        end
      end
      nodes = Node.all.map(&:name)
      nodes.each do |node|
        graph.add_vertex(node)
      end
      edge_values.each { |(node1, node2), _w| graph.add_edge(node1, node2) }

      graph
    end

    private

    def edge_values
      edge_values = {}
      edges = @edges_tree
      edges.each do |edge|
        edge_values[[edge.source, edge.destiny]] = edge.value
      end
      edge_values
    end
  end
end
