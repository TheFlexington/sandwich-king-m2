class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def welcome
        # log in stuff here
    end

    def main_menu
        # menu stuffs
    end


end
