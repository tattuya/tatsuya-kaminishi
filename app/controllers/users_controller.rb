class UsersController < ApplicationController
    def show
        @user = User.find(params[:id]) 
        @notifications = Notification.all
    end
end
