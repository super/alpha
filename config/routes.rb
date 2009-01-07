ActionController::Routing::Routes.draw do |map|
  map.home '', :controller => 'home'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
