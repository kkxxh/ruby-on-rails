class HomeController < ApplicationController
  def index #테이블 전체 불러오기
    @posts = Post.all
  end

  def new
  end


  def create #테이블에 글 추가
    @post = Post.new #테이블 한 행 추가
    @post.title = params[:post_title] #post_title의 내용을 title행에 추가
    @post.content = params[:post_content] #post_content의 내용을 content행에 추가
    @post.save #테이블에 써준 내용을 모두 저장

    redirect_to "/home/index" #돌아가고싶은 페이지
  end

end
