class UsersController < ApplicationController
    def create
        @user = User.new(user_params)
        if @user.save
          # token = JWT.encode({ :user_id => @user.id }, ENV['SUPER_SECRET_KEY'])
          # render :json => { "token": token }
          render :json => @user
        else
          render :json => { msg: "Signup failed.." }
        end
      end
    
      private
    
      def user_params
        params.require(:user).permit(:username, :password)
      end
    
end
