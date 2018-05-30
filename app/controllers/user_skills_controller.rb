class UserSkillsController < ApplicationController

  def index
    @userskills = UserSkill.all.sort_by {|us| us.skill.category}
  end

  def show
    @userskill = UserSkill.find(params[:id])
  end

  def edit
    @userskill = UserSkill.find(params[:id])
  end

  def update
    @userskill = UserSkill.find(params[:id])
    @userskill.update(userskills_params)
    if @userskill.valid?
      redirect_to user_path(@userskill.user)
    else
      redirect_to edit_user_skill_path
    end
  end

  private

  def userskills_params
    params.require(:user_skill).permit(:user_id, :skill_id, :description)
  end

end
