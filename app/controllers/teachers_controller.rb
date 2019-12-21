class TeachersController < ApplicationController

  before_action :authenticate_user!,except: [:show,:index]
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  def index
  	@teachers = Teacher.all
  end

  def show
  end

  def edit
  end

  def new
  	@teacher = Teacher.new
  end
  def create
  	@teacher = Teacher.new(teacher_params)
  	if @teacher.save
  		redirect_to teachers_url
  	else
  		render 'new'
  	end
  end

  def update
  	if @teacher.update(teacher_params)
  		redirect_to @teacher
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@teacher.destroy
  	redirect_to teachers_url
  end
  private
  	def set_teacher
  		@teacher = Teacher.find(params[:id])
  	end

  	def teacher_params
  		params.require(:teacher).permit(:first_name,:last_name,:phone_number,:email,:address)
  	end
end
