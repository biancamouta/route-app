require 'rgl/adjacency'
require 'rgl/dot'
require 'rgl/traversal'
require 'rgl/dijkstra'
require 'rgl/base'
require 'rgl/graph_visitor'
require 'rgl/dijkstra_visitor'
require 'rgl/edge_properties_map'
require 'rgl/path_builder'
require 'lazy_priority_queue'

class GraphsController < ApplicationController
  def index
    @graph = GraphBuilder.call
    @graph.write_to_graphic_file('jpg', 'public/graph2')  #tem como colocar cores
  end
end
