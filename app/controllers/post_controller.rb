class PostController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
  end

  def create
    Post.new(content: params[:content]).save
    redirect_to("/post/index")
  end
end
