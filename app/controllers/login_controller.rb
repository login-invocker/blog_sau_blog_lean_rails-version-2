class LoginController < ApplicationController

    before_action :check_user, only: %i[ create ]

    def index
        @user = User.new
    end

    def create
        respond_to do |format|
            if @user
              format.html { redirect_to "/", notice: "Đăng nhập thành công." }
              session[:user_email] = @user.email
            else
              format.html { redirect_to "/login", notice: "Đăng nhập thất bại." }
            end
          end
    end

    def delete
        session.delete(:user_email)
        redirect_to "/"
    end

    private

    def login_params
        params.fetch(:user, {}).permit(:email, :password)
    end

    def check_user
        @user = User.find_by(email: login_params["email"], password: login_params["password"])
    end
    
    # Only allow a list of trusted parameters through.

end
