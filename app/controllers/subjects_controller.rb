class SubjectsController < ApplicationController
  
  before_action :authenticate_user!,except: [:show,:index]
  before_action :set_subject, only: [:show, :edit, :update, :destroy]
  def index
  	@subjects = Subject.all
  end

  def new
  	@subject = Subject.new
  end

  def edit
  end

  def show
  end
  def create
  	@subject = Subject.new(subject_params)
  	if @subject.save
  		redirect_to subjects_path
  	else
  		render 'new'
      p @subject.errors
  	end
  end
  def update
  	if @subject.update(subject_params)
  		redirect_to @subject
  	else
  		render 'edit'
  	end
  end
  def destroy
  	@subject.destroy
  	redirect_to subjects_path
  end
  private
  	def set_subject
  		@subject = Subject.find(params[:id])
  	end
  	def subject_params
  		params.require(:subject).permit(:subject_name, :teacher_id,:class_create_id)
  	end
end
