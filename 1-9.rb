#vc구현

=begin
app/config/routes.rb
어떤 주문이 들어오면 이런 방식으로 저런 동작을 해라
Rails.application.routes.draw do
    root 'home#index'
    #get '/' => 'home#index'
    get '/attack', to:'home#attack'
    get '/defense', to: 'home#defense'
    #이런 방식(url요청방식) #어떤 주문(사용자가 요청하는 url)   #저런 동작(요청된 url을 처리할 컨트롤러(액션))
    
end

=end


=begin
params : 우리가 보낸 정보 보따리

=end