class UserSkillsController < ApplicationController

  def index
    @userskills = UserSkill.all.sort_by {|us| us.skill.category}
  end

  def show
    @userskill = UserSkill.find(params[:id])
  end

end
