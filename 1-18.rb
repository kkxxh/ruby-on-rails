#form_tag vs form_for(form_helper)
#note_project_1-10 수정

=begin
form_helper의 공통점
1) 자동으로 CSRF 방지 코드 삽입 <%= hidden_field_tag :authenticity_token, form_authenticity_token %>
2) 기본 메소드는 POST
=end

=begin
form_tag : 범용적인 입력 양식(o)/특정한 모델 편집(x)
    모델을 새로 생성하거나 변경하는 경우가 없는 경우
    ex) 검색, 키워드, 조건

form_for : 범용적인 입력 양식x)/특정한 모델 편집(o)
    모델과 관련이 있을 경우
    ex) 게시물 생성, 수정
=end


#link_to안에 무언가 요소를 넣고싶을때, do - end 사이에 넣는다
#form_tag안에 무언가 요소를 넣고싶을때, do - end 사이에 넣는다
#문법 주의!
<%=form_tag("url", method:"post(생략시 post)") do %>
제목 : <%=text_field_tag ('post_title(name')  (<-()생략 가능)), nil(value(nil은 생략 가능))%><br>
내용 : <%=text_area_tag 'post_content(name)', nil(value)%><br>
<%end%>


#지워두댐%>


<%= label_tag 'post_title', '제목'%> <!--제목을 클릭 시, text_field로 커서가 움직임-->
<%=text_field_tag('post_title',nil)%><br>

#form_tag URL 바꾸기
posts_path 사용

<!--<%=form_tag("/home/create", method: "post") do %>-->
<%=form_tag(posts_path) do %>
        <%= label_tag 'post_title', '제목'%> <!--제목을 클릭 시, text_field로 커서가 움직임-->
        <%=text_field_tag('post_title',nil)%><br>
        <!--제목 : <%=text_field_tag 'post_title'%><br>과 동일 -->
        <%= label_tag 'post_content', '내용'%>
        <%=text_area_tag('post_content',nil)%><br>
        <%=submit_tag '작성'%>
<%end%>