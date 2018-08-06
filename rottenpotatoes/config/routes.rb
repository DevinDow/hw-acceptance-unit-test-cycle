Rottenpotatoes::Application.routes.draw do
  
  # 'movies/xxx' before '/movies/:id' (resources : movie)
  get 'movies/match/:id', to: 'movies#match', as: 'match'
  get 'movies/director(/:director)', to: 'movies#director', as: 'director'

  resources :movies

  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')

end
