class AccountsController < ApplicationController
  before_action :set_account, only: %i[ show edit update destroy ]

  def index
    @accounts = Account.all
  end

  def show
  end

  def new
    @account = Account.new
  end

  def edit
  end

  def create
    @account = Account.new(account_params)
    return render :new, status: :unpricessable_entity unless @account.save

    redirect_to account_url(@account), notice: "Account was successfully created."
  end

  def update
    return render :edit, status: :unprocessable_entity unless @account.update(account_params)

    redirect_to account_url(@account), notice: "Account was successfully updated."
  end

  def destroy
    @account.destroy!
    redirect_to accounts_url, notice: "Account was successfully destroyed."
  end

  private

  def set_account
    @account = Account.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:name, :balance)
  end
end
