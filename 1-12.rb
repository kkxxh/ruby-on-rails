#MVC-Delete
#CRUD
=begin
controller안에 action을 만들어주고 , 그 action에 맞는 route를 설정해주고 ,
만약에 그 action에서 처리한 결과를 보여줘야하는 경우에는 ~.html.erb view파일을 작성해야함

view 파일을 보여주지 않고 바로 다른 액션으로 이동하는 경우, 굳이 view파일을 작성하지 않음(create.html.erb(view)삭제)
=end


#게시물 삭제
#전체 게시물의 삭제
def destroy
    Post.destroy_all
    redirect_to "/home/index"
end




#id : 특정한 누군가를 나타내기 위한 수단
#id는 .save를 하면 자동으로 생성


#특정 게시물의 삭제
#url로 destroy action에 id 전달
 def destroy
    @post = Post.find(params[:post_id])#삭제할 특정 id를 찾음
    @post.destroy
    redirect_to "home/index"
  end


=begin
route의 get 'home/destroy/:post_id' => 'home#destroy'
/post_id : 주소가 문자 그대로/post_id로 이동
/:post_id : /destroy/1, /destroy/2와 같이 게시물의 id를 post_id 변수에 저장

=end
