class SessionsController < ApplicationController
    def new
    end

    def create
        # byebug
        user=User.find_by(email: params[:session][:email].downcase)
        # respond_to do |format|
            if user && user.authenticate(params[:session][:password])
                session[:user_id]=user.id
                flash[:notice]="User was logged in successfully"
                redirect_to user

            else
                flash.now[:danger] = "Something went wrong"
                render :new, status: :unprocessable_entity
                
            end
        # end
    end

    def destroy
        session[:user_id]= nil
        flash[:notice]="Logged out"
        redirect_to root_path
    end
end