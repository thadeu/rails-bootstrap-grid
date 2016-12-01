require File.expand_path("../rails-bootstrap-grid/grid", __FILE__)

module RailsBootstrapGrid
  class Engine < Rails::Engine
    initializer "rails-bootstrap-grid.grid" do |app|
      ActionView::Base.send :include, RailsBootstrapGrid::Grid
    end
  end
end