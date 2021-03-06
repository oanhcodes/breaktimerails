class UsersController < ApplicationController

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      activities = Activity.limit(5)
      activities.each do |activity|
        Favorite.create(user_id: user.id, activity_id: activity.id)
        end
      redirect_to '/'
    else
      @errors = user.errors.full_messages
      flash.notice = "Registration failed. Please try again."
      render '/users/new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end