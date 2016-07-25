class GroupsController < ApplicationController
  def index
  	@user= User.find(session[:user_id])
  	@groups= Group.all
  end
end
