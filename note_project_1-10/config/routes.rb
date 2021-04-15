Rails.application.routes.draw do
  root "home#index"#시작하자마자 보이는 페이지

  get 'home/index'
  #get 'home/index' => 'home#index'(축약형)
  get 'home/new'
  #get 'home/new' => 'home#/new'

  #get 'home/create'
  post 'home/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
