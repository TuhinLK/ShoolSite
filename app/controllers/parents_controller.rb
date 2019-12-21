class ParentsController < ApplicationController
  
  before_action :authenticate_user!,except: [:show,:index]
  before_action :set_parent, only: [:show, :edit, :update, :destroy]
  def index
  	@parents = Parent.all
  end

  def show

  end

  def edit

  end

  def new
  	@parent = Parent.new
  end

  def create
  	@parent = Parent.new(parent_params)
  	if @parent.save
  		redirect_to parents_url
  	else
  		render 'new'
  	end
  end

  def update
  	if @parent.update(parent_params)
  		redirect_to @parent
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@parent.destroy
  	redirect_to parents_url
  end

  private
   def set_parent
   	@parent = Parent.find(params[:id])
   end

   def parent_params
   	params.require(:parent).permit(:first_name,:last_name,:phone_number,:email,:address)
   end

end
