class LoginController < ApplicationController
    def index
        
    end
    def create
        puts login_params
    end

    def login_params
        params.require([:email, :password])
    end
    private :login_params
    # Only allow a list of trusted parameters through.

end
