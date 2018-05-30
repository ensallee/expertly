class UsersController < ApplicationController
  before_action :authorized, only: [:edit]

  def home
    @users = User.all
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to signup_path
    end
  end

  def edit
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to current_user
    end
  end

  def teacher_edit
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to current_user
    end
    @skills = Skill.all.sort_by {|s| s.category.name}
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.valid?
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path(@user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :name, :location, :teacher, :student, skill_ids: [])
  end
end
