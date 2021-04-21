#form_for

=begin
<%=form_for(테이블 한 줄, url:posts_path, method:'post') do |f| %> #|f|는 |a|,|b|여도 상관없으며, 테이블 한 줄이라는 의미로 받아들이면 됨(한줄이 f에 담긴다)
    #f.title 은 제목을 의미하며, f.content는 내용을 의미할 것이다

    <%=f.input종류%>
<%end%>

-> 새로운 게시물을 만드는 경우
<%=form_for(Post.new, url:posts_path, method:'post') do |f| %>
    <%=f.input종류%>
<%end%>

-> 세번째 게시물을 업데이트하여 수정 내용을 반영하는 경우
<%=form_for(Post.find(3), url:post_path, method:'patch') do |f| %>
    <%=f.input종류%>
<%end%>

=end

=begin
post 테이블의 :속성 이름으로 input 지정
{"post" => {"title"=> "title"에 적은 값, "content" => "content"에 적은 값}}과 같은 params가 날아감(해시(두번쌓여서옴->create수정해야함))

form_tag를 사용할 때에는 input의 name을 무엇으로 하여도, params로 보낼 수 있었지만
form_for는 model과 관련이 되어있기 때문에 model과 관련된 속성만 input name을 지정할 수 있음(table에 적혀진 이름 그대로)

=end