#MVC- Update
#CRUD

=begin
edit : 덮어쓰기 : 새글을 쓰는 게 빈 테이블을 만들고 내용을 채우는 과정이라면, 글을 수정하는 건 채워진 테이블의 내용을 바뀌는 것
수정 페이지 양식 == 글쓰기 양식
edit.html.erb == new.html.erb (단, 이전 내용을 불러와야함)

수정하면서 id는 두번 필요
1) 수정하는 양식에 이전에 썻던 특정 내용을 불러올 때
2) 이전 글을 수정한 뒤 새로운 내용으로 업데이트 할 때
=end



=begin
<form action ="/home/update/<%=@post.id%>" method="post">
    <%= hidden_field_tag :authenticity_token, form_authenticity_token %>
    제목 : <input type ="text" name="post_title" value= '<%=@post.title%>' <br>
    내용 : <textarea name ="post_content" <%=@post.content%></textarea>
    <input type ="submit" value="수정">
</form>
=end