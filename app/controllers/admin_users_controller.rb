class AdminUsersController < ApplicationController

  before_action :authenticate_user!,except: [:show,:index]

  def index

  	if user_signed_in?
  		@school = current_user.school
  	end
  	
  end
end
