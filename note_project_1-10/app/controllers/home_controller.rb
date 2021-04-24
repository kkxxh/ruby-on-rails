class HomeController < ApplicationController
  def index #테이블 전체 불러오기
    @posts = Post.all
  end


  #form_for를 위함
  def new
    @post = Post.new
  end

  # #form_for 외의 것
  # def create #테이블에 글 추가
  #   @post = Post.new #테이블 한 행 추가
  #   @post.title = params[:post_title] #post_title의 내용을 title행에 추가
  #   @post.content = params[:post_content] #post_content의 내용을 content행에 추가
  #   @post.save #테이블에 써준 내용을 모두 저장

  #   #redirect_to "/home/index" #돌아가고싶은 페이지
  # end


    #form_for를 위함(params가 두번 쌓여있으니까 두번 까주기)
  def create #테이블에 글 추가
    @post = Post.new #테이블 한 행 추가
    @post.title = params[:post][:title] #post_title의 내용을 title행에 추가
    @post.content = params[:post][:content] #post_content의 내용을 content행에 추가
    @post.save #테이블에 써준 내용을 모두 저장

    redirect_to posts_path #돌아가고싶은 페이지
  end



  #전체 게시물 삭제
  # def destroy
  #   Post.destroy_all
  #   redirect_to "/home/index"
  # end

  def destroy
    @post = Post.find(params[:id]) #삭제할 특정 id를 찾음
    @post.destroy
    redirect_to posts_path
  end


  def edit
    #수정하는 양식에 이전에 썼던 특정 내용 불러오기
    @post =Post.find(params[:id]) #특정 게시물이 무엇인지 받아옴
  end

  # #form_for 외
  # def update
  #   #이전 글을 수정한 뒤 새로운 내용으로 업데이트
  #   #@post를 쓰지 않는 이유 : update는 view가 따로 없기 때문에 사용할 필요가 없음,@를 붙여도 상관없음
  #   post = Post.find(params[:post_id])
  #   post.title = params[:post_title]
  #   post.content =params[:post_content]
  #   post.save

  #   redirect_to '/home/index'
  # end

    #form_for를 위함
  def update
    post = Post.find(params[:id])
    post.title = params[:post][:title]
    post.content =params[:post][:content]
    post.save

    redirect_to posts_path

end
