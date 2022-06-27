# frozen_string_literal: true

# app/controllerss/accounts
class AccountsController < ApplicationController
  before_action :set_account, only: %i[show edit update destroy]
  def show; end

  def index
    @accounts = Account.all
  end

  def new
    @account = Account.new
  end

  def edit; end

  def create
    @account = Account.new(account_params)
    if @account.save
      flash[:notice] = ' Article was created successfully'
      redirect_to @account
    else
      render 'new'
    end
  end

  def update
    if @account.update(account_params)
      flash[:notice] = ' Account was updated successfully'
      redirect_to @account
    else
      render 'edit'
    end
  end

  def destroy
    @account.destroy
    redirect_to accounts_path
  end

  private

  def set_account
    @account = Account.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:accoutnumber, :branchname)
  end
end
