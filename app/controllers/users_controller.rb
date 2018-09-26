class UsersController < ApplicationController
    def show
        @user = User.find(params[:id]) 
        render :layout => "new_layout"
    end

    private
        def user_params
            params.require(:user).permit(:username, :first_name, :last_name, :email, :birthdate, :bio)
        end
   
end
