ActionController::Routing::Routes.draw do |map|
  map.home '', :controller => 'home'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
