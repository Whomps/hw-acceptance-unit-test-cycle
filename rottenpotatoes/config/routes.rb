Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  # added by Derek for hw3 to finding same director
  get 'movies/:id/find_same_director' => 'movies#find_same_director', :as => :same_director
end
