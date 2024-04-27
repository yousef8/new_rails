class AuthorController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new({name: params[:author][:name],
    email: params[:author][:email],
    dob: params[:author][:dob],
    phone_number: params[:author][:phone_number]})

    if @author.save
      redirect_to authors_url
    else
      render :new, status: :unprocessable_entity
    end
  end
end
