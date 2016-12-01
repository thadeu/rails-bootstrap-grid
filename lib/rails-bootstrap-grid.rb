module RailsBootstrapGrid
	class Engine < ::Rails::Engine
		initializer "rails.bootstrap.grid_helpers" do
			ActionView::Base.send :include, Rails::Bootstrap::GridHelpers
		end
	end
end