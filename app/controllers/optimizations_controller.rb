class OptimizationsController < ApplicationController

    # o mesmo grafo feito no controller vai vir pra ca?

  def index
    @dijkstra = Optimizations.dijkstra_shortest_paths(GraphBuilder.call, GraphBuilder.edge_values)
    @bellman_ford = Optimizations.bellman_ford_shortest_paths(GraphBuilder.call, GraphBuilder.edge_values)
    @prim_tree = Optimizations.prim_minimum_spanning_tree(GraphBuilder.call, GraphBuilder.edge_values)
    @prim_cost = Optimizations.prim_cost(@prim_tree.edges)
    @graph = TreeBuilder.call(@prim_tree.edges)
    @graph.write_to_graphic_file('jpg', 'public/tree')
  end
end
