Rails.application.routes.draw do
  get '/game' => 'batard#game'
  get '/score' => 'batard#score'
  root 'batard#game'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
