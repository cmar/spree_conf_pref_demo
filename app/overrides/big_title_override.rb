Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "big_title_header",
                     :replace => "figure#logo",
                     :text => %q{<h1><%= Spree::Config.big_title %></h1>}
                     )
