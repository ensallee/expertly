class CoursesController < ApplicationController

  def new
    @course = Course.new
    @user = current_user

  end

  def create
    @course = Course.create(course_params)
    redirect_to @course.user
  end

  private

  def course_params
    params.require(:course).permit(:user_id, :user_skill_id)
  end

end
