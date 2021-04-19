#RESTful
#scaffold

=begin
scaffold: migration, model, routes, controller, view 를 한번에


$ rails g scaffold posts(모델이름:post, 컨트롤러이름:posts) 
title:string content:text #migration파일의 기본적인 설정

모델이름과 컨트롤러이름은 보통 통일하되, 모델이름은 단수, 컨트롤러이름은 복수로 많이 함


$ rake db:migrate #route설정
Rails.applicatoin.routes.draw do
    root 'post#index'
    resources :posts
end


$ rake db:migrate
데이터베이스 모양 확정

=end


=begin
RESTful = REprentational State Transfer(무엇(resource)을 어떻게(HTTP method) 할 지 표현)
resource : crud 할 수 있는 정보
HTTP method : 리소스들이 하게되는 행위, 추출(GET), 생성(POST), 변경(PUT/PATCH), 제거(DELETE)

=end