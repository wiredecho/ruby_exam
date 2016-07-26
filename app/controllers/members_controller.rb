class MembersController < ApplicationController
	before_action :require_login
	def create
		member = Member.find_by(user_id: session[:user_id], group_id: params[:id])
		if member
			flash[:errors] = ['You have already a member of this group']
			redirect_to :back
		else
			Member.create(user_id: session[:user_id], group_id: params[:id])
			redirect_to :back
		end
	end
end

