# Put your extension routes here.

# map.namespace :admin do |admin|
#   admin.resources :whatever
# end  

map.resources :pages

#map.root :controller => "content", :action => "home"

map.root :controller => "products", :action => "index"
map.admin '/admin', :controller => 'admin/products', :action => 'index'  




