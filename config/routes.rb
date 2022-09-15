Rails.application.routes.draw do

  namespace :admin do
    resources :genres,only:[:create, :index, :edit, :update]
    resources :items
  end

  namespace :public do
    resources :items,only:[:show, :index]
  end

  devise_for :admins,skip:[:passwords],controllers:{
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  devise_for :customers,skip:[:registrations,:passwords],controllers:{
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
