require 'rails_helper'

RSpec.describe Optimizations do
  let(:graph) { GraphBuilder.call }
  let(:edge_values) { { ['a', 'b'] => 10, ['a', 'c'] => 20,	[ 'b', 'c'] => 30 } }
  before do
		Node.create({ id: 5, name: 'a', value: 1 })
		Node.create({ id: 6, name: 'b', value: 2 })
    Node.create({ id: 7, name: 'c', value: 3 })
    Edge.create({ id: 1, name: 'A', source: 'a', destiny: 'b', value: 10 })
    Edge.create({ id: 2, name: 'B', source: 'a', destiny: 'c', value: 20 })
    Edge.create({ id: 3, name: 'C', source: 'b', destiny: 'c', value: 30 })
  end
  
  context 'shortest paths' do
    let(:shortest_paths) { { "a"=>["a"], "b"=>["a", "b"], "c"=>["a", "c"] } }

    it 'djikstra' do
      edge_values = GraphBuilder.edge_values
      expect(Optimizations.dijkstra_shortest_paths(graph, edge_values)).to eq(shortest_paths)
    end

    it 'bellman_ford' do
      expect(Optimizations.bellman_ford_shortest_paths(graph, edge_values)).to eq(shortest_paths)
    end
  end

  context 'minimum tree' do
    it 'prim' do
      expect(Optimizations.prim_minimum_spanning_tree(graph, edge_values)).to be_kind_of(RGL::DirectedAdjacencyGraph)
    end
  end
end
