class UsersController < ApplicationController
    def show
        @user = User.find(params[:id]) 
        render :layout => "new_layout"
    end

    def edit
        @user = User.find(params[:id])
        render :layout => "edit_layout"
    end

    def update
        @user = User.find(params[:id])

        if @user.update(avatar_params)
            flash[:notice] = "Avatar updated successfully"
            redirect_to(@user)
        else
            render "show"
        end
    end

    private
        def user_params
            params.require(:user).permit(:username, :first_name, :last_name, :email, :birthdate, :bio)
        end

        def avatar_params
            params.require(:user).permit(:avatar)
        end

end
