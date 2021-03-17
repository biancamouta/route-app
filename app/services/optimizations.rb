require 'rgl/dijkstra'
require 'rgl/prim'
require 'rgl/bellman_ford'
class Optimizations
  class << self
    def dijkstra_shortest_paths(graph, edge_values)
      visitor = RGL::DijkstraVisitor.new(graph)
      RGL::DijkstraAlgorithm.new(graph, edge_values, visitor).shortest_paths(graph.vertices.first)
    end
    
    def bellman_ford_shortest_paths(graph, edge_values)
      visitor = RGL::BellmanFordVisitor.new(graph)
      RGL::BellmanFordAlgorithm.new(graph, edge_values, visitor).shortest_paths(graph.vertices.first)
    end

    def prim_minimum_spanning_tree(graph, edge_values)
      visitor = RGL::DijkstraVisitor.new(graph)
      RGL::PrimAlgorithm.new(graph, edge_values, visitor).minimum_spanning_tree(graph.vertices.first)
    end

    def prim_cost(tree_edges_array)
      cost = 0
      Edge.all.each do |edge|
        tree_edges_array.each do |e|
          if e.source == edge.source && e.target == edge.destiny
            cost += edge.value
          end
        end
      end
      cost
    end
  end
end
