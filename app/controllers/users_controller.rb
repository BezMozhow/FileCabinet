class UsersController < ApplicationController
    before_action :find_user, only: [:edit, :update, :show, :destroy]


    def index 
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new()
    end 

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to @user
        else
            render 'new'
        end

    end

    def edit 
    end
    
    def update
        if @user.update
            redirect_to @user
        else
            render 'edit'
        end
    end 

    def destroy
        @user.destroy
    end 
    

    private

    def find_user
        @user = User.find(params[:id])
    end 

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end 

end
