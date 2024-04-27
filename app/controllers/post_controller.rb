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

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update({title: params[:post][:title], content: params[:post][:content]})
      redirect_to posts_url
    else
      render :edit, status: 422
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_url
    end

end
