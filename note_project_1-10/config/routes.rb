Rails.application.routes.draw do
  root "home#index"#시작하자마자 보이는 페이지

  get 'home/index'
  #get 'home/index' => 'home#index'(축약형)
  get 'home/new'
  #get 'home/new' => 'home#/new'

  #get 'home/create'
  #post 'home/create'
  post 'home/create', as: 'posts'
  
  #get 'home/destroy/:post_id' => 'home#destroy'
  get '/home/destroy/:post_id' => 'home#destroy',as: 'post_destroy'

  get 'home/edit/:post_id' => 'home#edit'

  #post 'home/update/:post_id' => 'home#update'
  patch 'home/update/:post_id' => 'home#update', as: 'post'
  

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
