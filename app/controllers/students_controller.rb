class StudentsController < ApplicationController
  
  before_action :authenticate_user!,except: [:show,:index]
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  def index
  	@students = Student.all
  end

  def show
    @school = current_user.school
  end

  def edit
  end

  def new
  	@student = Student.new
    @student.parent_students.build
  end

  def create
  	@student = Student.new(student_params)
  	if @student.save 
  		redirect_to students_path
  	else
  		render 'new'
      p @student.errors
  	end
  end

  def update
  	if @student.update(student_params)
  		redirect_to @student
  	else
  		render 'edit'
  	end
  end

  def destroy 
  	@student.destroy
    p @student.errors
  	redirect_to students_path
  end

  private
  	def set_student
  		@student = Student.find(params[:id])
  	end

  	def student_params
  		params.require(:student).permit(:class_create_id,:first_name,:last_name,:phone_number,:email,:address, parent_students_attributes:[:parent_id,:student_id])
  	end

end
