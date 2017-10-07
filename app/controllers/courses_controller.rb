class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_course, only: [:show]
  before_action :find_softwares, only: [:show]

  def index
    @menu_cours = "active"
    @courses = Course.where(visible: true).order(created_at: :asc)
    @inscription = Block.find_by(tag: "inscription_cours")
    @planning = Block.find_by(tag: "planning")
    @tarifs1 = Block.find_by(tag: "tarifs1")
    @tarifs2 = Block.find_by(tag: "tarifs2")
  end

  def show
    @menu_videos = "active"
    @lectures = Lecture.where(course: @course).where(visible: true)
    @softwares = Software.where(course: @course)
    @users_lectures = UsersLecture.where(user: current_user)
    @inscription = Block.find_by(tag: "inscription_cours")
    @access = UsersCourse.where(user: current_user).where(course: @course).find_by(confirmed: true)
    if @access && @access.end && @access.end.strftime < Date.today.strftime
      @access.confirmed = false
      @access.save!
      flash[:notice] = "Votre abonnement est terminé"
    end
    # cf before_action
  end

  def modal
    @lectures = Lecture.where(course: @course).where(visible: true)
    @softwares = Software.where(course: @course)
    @users_lectures = UsersLecture.where(user: current_user)
    # cf before_action
  end

  private

  def find_course
    @course = Course.where(visible: true).find(params[:id])
  end

  def find_softwares
    @courses_softwares = CoursesSoftware.where(course_id: params[:id])
  end
end
