class UsersController < ApplicationController

    def show

    end

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to users_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
            redirect_to users_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def user_params
        params.require(:user).permit(:username, :password, :email)
    end
end