Evescore::Application.routes.draw do
  match "/donate", :controller => :donate, :action => :index

  get "kills/log"

  get "api/verify"
  get "api/import_all"
  match "api/import"

  get "key/add"
  match "key/save"
  root :to => "home#index"
end
