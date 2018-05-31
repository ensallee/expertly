class UsersController < ApplicationController
  before_action :authorized, only: [:edit]

  def home
    @categories = Category.all
    render layout: 'home'
  end

  def show
    @user = User.find(params[:id])
    @courses = @user.courses
  end

  def new
    @user = User.new
    render layout: 'home'
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
    @categories = Category.all
    if current_user != @user
      redirect_to current_user
    end
    @skills = Skill.all.sort_by {|s| s.category.name}
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    if !params[:user][:skills][:name].empty?
      skill = Skill.find_or_create_by(name: params[:user][:skills][:name], category_id: params[:user][:skills][:category_id])
      UserSkill.create(user: @user, skill: skill, description: params[:user][:user_skills][:description])
    end

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
