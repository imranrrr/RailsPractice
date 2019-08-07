class UsersController < ApplicationController

before_action :set_values, only: [:edit, :update, :destroy, :show]

	def index
		@users=User.all
	end

	def new
		@user=User.new
	end

	def create
		debugger
		@user=User.new(user_params)
		# @user.emp = Emp.first
		if @user.save
			flash[:notice]="successfully created!"
			redirect_to users_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @user.update(user_params)
			flash[:notice]="successfully updated!"
			redirect_to users_path(@user)
		else
			render 'edit'
		end
	end

	def show

	end

	def destroy
		@user.destroy
		flash[:notice]="Deleted successfully!"
		redirect_to users_path
	end

	private

	def user_params
		params.require(:user).permit(:title, :description)
	end

	def set_values
		@user=User.find(params[:id])
	end
end
