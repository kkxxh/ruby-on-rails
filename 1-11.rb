#CRUD

=begin
DB == 영구적으로 정보를 저장

제목, 내용을 저장할 table(표) + 입력한 정보를 테이블에 넣어주는 기능
= Model + create action

$ rails g model post(이름) (모델 생성하기)
app/models/post.rb 생성

db/migrate/~.rb 생성

=end

=begin
migrate/xxx_create_posts.rb (테이블의 모양을 결정하기 위한 파일)

rake db:migrate (테이블의 모양을 확정하는 명령어)
rake db:drop (테이블을 삭제하는 명령어)


kangseonghee@kkxxh note_project_1-10 % rake db:migrate   
== 20210416004240 CreatePosts: migrating ======================================
-- create_table(:posts)
   -> 0.0018s
== 20210416004240 CreatePosts: migrated (0.0019s) =============================

=end


=begin
테이블에 채워넣기(app/controllers/home_controller.rb)
def create 
    @post = Post.new #테이블 한 행 추가
    @post.title = params[:post_title] #post_title의 내용을 title행에 추가
    @post.content = params[:post_content] #post_content의 내용을 content행에 추가
    @post.save #테이블에 써준 내용을 모두 저장

    redirect_to 'home/index'#돌아가고싶은 페이지
end

테이블 전체 불러오기 (app/controllers/home_controller.rb)
def index 
    @posts = Post.all
end

$ rails c
 를 통해 데이터베이스를 확인할 수 있다

 
> Post.all
: Post라는 모델의 전체를 불러옴



한줄 씩 불러오기(each) (app/views/home/index.html.erb)
<%@posts.each do |x|%> <!--x는 post 테이블의 각 행-->
    제목 : <%=x.title%> <br> <!--그 행의 title에 들어있는 내용-->
    내용 : <%=x.content%> <br> <!--그 행의 content에 들어있는 내용-->
    ____________________________<br> 
<%end%> <!--한 줄 씩 do ~ end사이의 작업을 반복(end에서 반복문 종료)-->


<%=실행되는게 보인다%>
<%안보인다%>


=end