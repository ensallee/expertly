class SkillsController < ApplicationController
  before_action :find_skill, only: [:show, :edit, :update, :destroy]

  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
    @difficulties = ["beginner", "intermediate", "advanced", "expert"]
  end

  def create
    byebug
    @skill = Skill.create(skills_params)
    if @skill.valid?
      redirect_to @skill
    else
      new_skill_path
    end
  end

  def show
  end

  def edit
  end

  def update
    @skill.update(skills_params)
    if @skill.valid?
      redirect_to @skill
    else
      edit_skill_path
    end
  end

  def destroy
    @skill.destroy
  end

  private

  def skills_params
    params.require(:skill).permit(:name, :description, :category_id, :difficulty_level)
  end

  def find_skill
    @skill = Skill.find(params[:id])
  end

end
