module Presenter
  class Prim
    class << self
      def call(visitor, prim_opt)

        show(visitor,  )
      end

      private

      def show (prim_opt)
        { optimized_cost: x,
          minimum_tree: prim_opt.prim_minimum_spanning_tree(start_node = )
        }
      end

      def prim_minimum_spanning_tree(edge_weights_map, start_vertex = nil, visitor = DijkstraVisitor.new(self))
        PrimAlgorithm.new(self, edge_weights_map, visitor).minimum_spanning_tree(start_vertex)
      end
    end
  end
end
