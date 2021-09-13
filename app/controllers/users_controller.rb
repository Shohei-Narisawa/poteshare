class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.all
  end
  
  def create
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    if @user.save
      redirect_to("/users/profile")
    else
      render "new"
    end
  end
  
  def show
    @user = User.find_by(id: params[:id])
  end
  
  def profile
    @user = User.find_by(id: params[:id])
  end
  
  def account
    @user = User.find_by(id: params[:id])
  end
  
  def edit
    @user = User.find_by(id: params[:id])
  end
  
  def update
    @user = User.find_by(id: params[:id])
  end
  
  def sign_in
  end
  
  def login
  end
  
  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to :users
  end
end
