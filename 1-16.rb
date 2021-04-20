#scaffold 까보기


#new.html.erb 보기
<%= render 'form', post: @post %>

#render 'form'- render는 무엇을 보여줄 때 사용. form을 보여줌 
#이 때 form이 될 수 있는 것을 view파일에서 유추해보면 app/views/post/_form.html.erb
_form.html.erb의 내용을 그대로 가져오는 것

#post: @post - post에 @post를 넣어라?


#edit.html.erb 보기

<%= render 'form', post: @post %>

#new.html.erb과 edit.html.erb이 같은 form을 불러옴


=begin
form_for
모델 객체(post)가 신규 또는 이미 저장 완료됐는지를 자동으로 판단해 적절한 url로 안내해줌
즉, @post=Post.new면 create action으로, @post=Post.find(params[:id])면 update 액션으로 보내줌
=end