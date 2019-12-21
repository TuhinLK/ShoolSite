class ClassCreatesController < ApplicationController
  before_action :authenticate_user!,except: [:show,:index]

  before_action :set_class, only: [:show, :edit, :update, :destroy]


  def index
    @createClasses = ClassCreate.all
  end

  def new
    @classCreate = ClassCreate.new
  end

  def show
  end
  def edit
  end

  def create
    @classCreate = ClassCreate.new(class_params)
    if @classCreate.save
      redirect_to class_creates_path
    else
      render 'new'
    end
  end

  def update
    #@classCreate = ClassCreate.find(params[:id])

    if @classCreate.update(class_params)
      redirect_to @classCreate
    else
      render 'edit'
    end
  end

  def destroy
      @classCreate.destroy
      redirect_to class_creates_path

  end

  private
    def class_params
      params.require(:class_create ).permit(:class_name , :school_id)
    end
    def set_class
      @classCreate = ClassCreate.find(params[:id])
    end
end
