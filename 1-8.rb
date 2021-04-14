=begin
액션 == 실질적으로 요청을 처리
컨트롤러 == 액션의 집합
=end

=begin
1.
컨트롤러 생성:
rails g controller 이름 (rails generate controller 이름)
-> ruby_vc_1-8/app/controllers/home_controller.rb 생성
-> ruby_vc_1-8/app/views/home 폴더 생성


2. home_controller에 함수 작성

3. app/views/home에 함수에 해당하는 .html.erb 파일들 생성 

action에서는 데이터를 처리(데이터 가공)하고 ,view에서는 결과를 보여준다
단, action 이름 == view 이름 (연관시켜주기 위해)

* xxx.html.erb
ruby 코드를 삽입할 수 있는 html의 확장판 
erb = embeded ruby

=end

=begin
app/views/home 의 html.erb 파일은 html 구성을 왜 따르지 않는가?
solution: app/views/layouts의 application.html.erb파일은 html 구성을 따르고 있는데,
작성된 app/views/home 의 html.erb 파일의 내용이 app/views/layouts의 application.html.erb파일의 
  <body>
    <%= yield %>
  </body>
  의 yield안에 삽입이 되어 전체적인 html모양을 그리게 된다.
=end

=begin
app/views/home/index.html.erb 내용을 바꾸고 터미널에 $ rails s 입력하여 rails 서버를 시작한다
localhost:3000 접속 -> 원하는 index.html.erb 내용이 출력되지 않음
왜?
경로를 지정해주지 않았기 때문 (config/routes.rb파일 수정 root "home#index" 수정)
=end
