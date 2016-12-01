require '../helpers/grid_helper'

module RailsBootstrapGrid
	module Rails
		class Engine < ::Rails::Engine
			initializer "rails-bootstrap-grid.helpers" do
				ActionView::Base.send :include, RailsBootstrapGrid::Helpers::GridHelper
			end
		end
	end
end