# frozen_string_literal: true

# app/controllers/texts
class TextsController < ApplicationController
  before_action :set_text, only: %i[show edit update destroy]
  def show; end

  def index
    @texts = Text.all
  end

  def new
    @text = Text.new
  end

  def create
    @text = Text.new(text_params)
    if @text.save
      flash[:notice] = 'text created'
      redirect_to @text
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @account.update(text_params)
      flash[:notice] = 'text updated'
      redirect_to @text
    else
      render 'edit'
    end
  end

  def destroy
    @text = Text.find(params[:id])
    @text.destroy
    redirect_to texts_path
  end

  private

  def set_text
    @text = Text.find(params[:id])
  end

  def account_params
    params.require(:text).permit(:length)
  end
end
