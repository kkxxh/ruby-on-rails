#scaffold 컨트롤러 이해
#컨트롤러 이해하기

#responds_to: 지정된 형식에 따라 다른 템플릿을 출력
=begin
HTML : 일반적인 상황에서 사용
.html.erb: ruby코드를 사용할 수 있는 html의 한 형태


json : 데이터의 표현 방법 중 하나, api를 사용할 때 자주 등장
=end

#redirect_to
=begin
@post.save한 뒤에 @post로 redirect된다는 것 

=end
#strong_parameter
=begin
받고싶은 매개변수만 받자
화이트 리스트 <=> 블랙리스트

params.require(모델이름).permit(:속성1, :속성2)

def post_params
    params.require(:pos).permit(:title, :content)
end

=end


#flash
=begin
로그인했을 때, 로그인에 성공했습니다등의 순간적인 메세지(새로고침하면 없어지는 메세지)

redirect 전 후로만 (일시적으로 메세지를 띄움) 데이터를 저장하고 싶을 때 현재 요청과 다음 요청에서만 정보를 저장
flash[:아무이름] ="넣고 싶은 메세지" 형식으로 사용

flash[:notice]는 성공적일 때, flash[:alert]는 경고, 실패했을 때
각각은 그냥 notice, alert으로 사용할 수 있음(레일즈에서 정해놓음)
=end