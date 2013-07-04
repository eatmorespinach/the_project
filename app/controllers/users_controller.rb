class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user]) #where does this line's :user link to?
  	if @user.save
  		redirect_to www.google.com
  	else
  		render :new
  	end

  end

end
