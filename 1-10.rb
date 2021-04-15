# MVC 구조를 활용하여 CRUD
# 컨트롤러 만들기 -> 액션 만들기 -> 라우트 작성하기 -> 액션이름대로 .html.erb 만들기
# new.html.erb(글 작성 양식) -> create 액션 -> index.html.erb(전체목록으로 보여주기)

=begin
변수 : 일시적으로 정보를 저장
DB : 영구적으로 정보를 저장

=end


=begin
rails g controller home index new create
-> index, new, create 액션과 뷰를 가진 home이라는 컨트롤러를 생성하라는 명령어

=end


=begin
<form>
form에서 method를 따로 적지 않았을 경우 default = get method

get : 입력한 정보를 url에 노출(정보 보여줘도 상관 없을 때)
get 'home/index'
#get 'home/new' => 'home#new'

post : 입력한 정보를 숨겨서 보냄(정보를 보여주면 안될 때)
post 'home/index'
#post 'home/new' => 'home#new'

=end


=begin
CSRF : 웹 페이지에 악성코드나 링크를 포함하는 공격 방법
이 공격을 막아내기 위해 post로 method를 보내면서 별도로 암호화된 토큰을 같이 보내줌
보안 토큰을 숨겨서 보내주는 방법  
form 태그 method를 post로 설정하고
<%= hidden_field_tag :authenticity_token, form_authenticity_token %>을 추가하면
<%= params %> 하였을 시, 긴 암호(비밀번호)가 받아지는 것을 확인할 수 있음

hidden_field_tag 는 숨겨진 태그로 page에서는 확인할 수 없음

rails에서만 활용하는 form tag- form_for를 이용하면 보안토큰까지 안전하게 처리를 해줌
=end