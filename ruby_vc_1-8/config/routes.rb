Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root "home#index" #첫 화면을 home#index파일로 지정
#get '/' => 'home#index'
get '/attack', to:'home#attack'
get '/defense', to:'home#defense'
end

=begin
어떤 주문이 들어오면 이런 방식으로 저런 동작을 해라
get '/attack', to: 'home#attack'
get '/defense', to: 'home#defense'
#이런방식(url요청 방식) '어떤 주문(사용자가 요청하는 url)' '저런 동작(요청된 url을 처리할 컨트롤러(액션)'

=end