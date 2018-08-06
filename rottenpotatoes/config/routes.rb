Rottenpotatoes::Application.routes.draw do
  
  # 'movies/director' before '/movies/:id'
  get 'movies/director(/:director)', to: 'movies#director', as: 'director'

  resources :movies

  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')

end
