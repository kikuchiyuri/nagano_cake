Rails.application.routes.draw do

  namespace :admin do
    get 'genres/index'
    get 'genres/create'
    get 'genres/edit'
    get 'genres/update'
  end
  #管理者用
  #URL /admin/sign_in...
  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    get '/' => 'homes#top'
  end

  #顧客用
  #URL /customers/sign_in...
  devise_for :customers, controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

  root to: 'public/homes#top'
  get '/about' => 'publichomes#about'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
