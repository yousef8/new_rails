class PostController < ApplicationController
  def index
  @posts = Post.all;
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new({title: params[:post][:title], content: params[:post][:content]})
    if @post.save
      redirect_to posts_url
    else
      render :new, status: 422
    end
  end
end
