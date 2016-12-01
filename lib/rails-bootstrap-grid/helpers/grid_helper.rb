module RailsBootstrapGrid::Helpers::GridHelper
	@grid_columns = (1..12)

	class << self
		
		def load!
			cols(:xs, :sm, :md, :lg)
			containers(:row, :container, "container-fluid")
		end

		def define_method_html(name_method, css_class)
			define_method "#{name_method}" do |content= nil, html: {}, &block|				
				content = capture(&block) if block_given?

				div_class = "#{css_class} "
				div_class += html[:class] if html[:class].present?

				html = html.merge({class: div_class})

				content_tag :div, content, html, &block
			end
		end

		def containers *arguments
			arguments.each do |name|
				name = name.to_s.gsub(/\-/,'_') if name.to_s =~ %r(-)
				define_method_html(name, name)
			end
		end	
		
		def cols *arguments
			arguments.each do |name|
				@grid_columns.to_a.each do |n|
					named_methods = ["col", name, n] 
					define_method_html(named_methods.join("_"), named_methods.join("-"))
				end
			end
		end	
	end
end

RailsBootstrapGrid::Helpers.GridHelper.load!
