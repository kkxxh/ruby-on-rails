#scaffold처럼 변경

=begin
form_for로 내용을 받아올 때, 이상한 것을 받아오지 않기 위해 어떤 것을 받아와라는 내용을 정해줌
-> private으로 (home_controller에 post_params함수 생성)

post params는 title, content을 받아온 결과가 담겨 있음

home_controller의 create 함수 수정

=end

=begin
respond_to : 지정된 형식에 따라 다른 템플릿을 출력
flash[:notice] = notice
=end