Rails.application.routes.draw do


  root 'home#show'

  resources :quizzes


end
