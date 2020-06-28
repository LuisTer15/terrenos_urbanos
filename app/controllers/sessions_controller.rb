class SessionsController < ApplicationController
  before_action :private_access, only: [:destroy, :user_menu]
  before_action :public_access, except: [:destroy, :user_menu]

  def new
  end

  def user_menu
  end

  def create
  	user = User.find_by(email: params[:email])
  	if user && user.authenticate(params[:password])
  		sign_in(user)
  		redirect_to user_menu_path
  	else
  		render :new
  	end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
