class ApplicationController < ActionController::Base
    # http_basic_authenticate_with :name => "user", :password => "password" 
    # before_action :authorize

    protected
  
    def authorize
        # @user = User.find_by_id(session[:user_id]) 
        puts "path is: " + request.fullpath
        @user = 0
        if @user == nil
            redirect_to '/login/index', :notice => 'You must login first'
        end
    end
end