require 'bootstrap/grid_helper'
module Bootstrap
  class Railtie < Rails::Railtie
    initializer "bootstrap.grid_helper" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end