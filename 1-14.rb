#link_to (helper method)
#view_helper(1)



<%=link_to '텍스트',URL %>

<a>텍스트</a>
<a href ='URL'>텍스트</a>

<a href="/posts/destroy/<%=post.id%">삭제</a>
<%= link_to '삭제', "posts/destroy/#{post.id}" %>

#루비 문법을 써야하는 상태에서 "문자열"안에 문자가 아닌 변수를 넣으려면 #{}로 감싸줘야한다



#루비는 URL부분을 간소화하는 기능을 제공(route에서)
#get '/posts/destroy/:post_id' => 'post#destroy',as: 'post_destroy'
#as를 통해 이 route를 post_destroy라는 이름으로 짧게 부르겠다
<%=link_to '삭제',post_destroy_path(post_id:post.id)%>


# $rake routes : 이 때까지 어떤 경로가 이 프로젝트에 생성되었는지 확인 가능





<a href="/posts/destroy/<%=post.id%>">
    <button>삭제</button>
</a>

<%=link_to post_destroy_path(post_id:post.id) do%>
    <button>삭제</button>
<%end%>
