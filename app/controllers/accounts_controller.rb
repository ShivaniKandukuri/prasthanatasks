class AccountsController < ApplicationController
  def show
    @account=Account.find(params[:id])
  end
  def index
    @accounts=Account.all
  end
  def new
  end
end
