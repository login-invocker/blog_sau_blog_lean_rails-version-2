class RegisterController < ApplicationController
    def index
        @user = User.new
    end
end
