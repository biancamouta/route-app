module Presenter
	class Djikstra
		class << self
			def show_data(visitor, dj_opt)
				{ optimized_cost: x,
					shortest_paths: dj_opt.shortest_paths(visitor)
				}
			end
		end
	end
end
