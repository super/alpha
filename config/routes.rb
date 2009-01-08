ActionController::Routing::Routes.draw do |map|
  map.home '', :controller => 'home'
  map.resources :users
  map.login '/login', :controller => 'accounts', :action => 'login'
  map.logout '/logout', :controller => 'accounts', :action => 'logout'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
