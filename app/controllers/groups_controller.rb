class GroupsController < ApplicationController
	def index
	  	@user= User.find(session[:user_id])
	  	@groups= Group.all
	end


  	def create
		user = User.find(session[:user_id])
		group = user.groups.new(group_params)
		flash[:errors] = group.errors.full_messages unless group.save
		redirect_to :back
	end

	def show
		@group = Group.find(params[:id])
		@members = Member.where(group_id: params[:id])

	end


	private
	def group_params
		params.require(:group).permit(:group_name, :description)
	end
end
