Rails.application.routes.draw do


  ##管理者用
  #URL /admin/sign_in...
  devise_for :admin, skip: [:registrations, :passwords] , controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    get '/' => 'homes#top'
    resources :genres, only: [:index, :create, :edit, :update]
    resources :items, only: [:new, :create, :index, :show, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
  end


  ##顧客用
  #URL /customers/sign_in...
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

  scope module: :public do
    root to: 'homes#top'
    get '/about' => 'homes#about'
    resources :customers, only: [:show, :edit, :update]
  end




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
