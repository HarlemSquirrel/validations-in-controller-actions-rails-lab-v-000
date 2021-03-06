class AuthorsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private

  def author_params
    #binding.pry
    {name: params[:name], email: params[:email]}
  end
end
