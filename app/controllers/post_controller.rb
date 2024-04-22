class PostController < ApplicationController
  def index
    # Create & Read
    post = Post.create({title: "Cool Title", content: "Cool content"})
    posts = Post.all
    posts.each do |post|
      puts "#{post.id} : #{post.title} : #{post.content} : #{post.created_at} : #{post.updated_at}"
    end

    # Update & Read
    updated_post = Post.where(id: post.id).update(content: "yousef edited content")
    posts = Post.all
    posts.each do |post|
      puts "#{post.id} : #{post.title} : #{post.content} : #{post.created_at} : #{post.updated_at}"
    end

    # Delete & Read
    Post.delete_by(id: updated_post[0].id)
    posts = Post.all
    posts.each do |post|
      puts "#{post.id} : #{post.title} : #{post.content} : #{post.created_at} : #{post.updated_at}"
    end

    # Delete

  end
end
