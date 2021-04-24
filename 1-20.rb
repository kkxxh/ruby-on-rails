#scaffold처럼 변경

=begin
new와 edit처럼 비슷한 코드가 겹칠 때, 같은 코드를 여러번 쓰는 것을 방지 -> app/view/home/ _form.html.erb 생성
scaffold에서 사용하는 파일, render로 꺼내오는 파일
=end

=begin
route를 다시 설정
기존의 routes는 액션까지 일일이 알려주는 번거로움이 있음(기존의 route 내용 주석 처리)

  resources :posts 작성

  $ rake routes를 통해  확인

  resources :posts는 posts controller를 기반으로 함
  -> home controller에서 작동하도록 수정해야함 (controller: "home"추가)
  resources :posts, controller: "home"

  --> 원래 작동하는 코드들이 작동을 하지 않을 것이다.
  


=end