class UsersController < ApplicationController


def show
	@user = User.find(params[:id])
	@userprojects = current_user.projects
end

end