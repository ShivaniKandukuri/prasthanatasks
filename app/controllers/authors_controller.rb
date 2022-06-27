# frozen_string_literal: true

# app/controllerss/authors
class AuthorsController < ApplicationController
  before_action :set_author, only: %i[show edit update]
  def show; end

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = 'Author created sucessfully'
      redirect_to @author
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @author.update(author_params)
      flash[:notice] = 'Author updated'
      redirect_to @author
    else
      render 'edit'
    end
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:first_name, :last_name, :age, :gender)
  end
end
