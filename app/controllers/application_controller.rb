class ApplicationController < ActionController::Base
    def home
        if user_signed_in?
            render "loggedin"
        else
            render "notloggedin"
        end
    end
    
    def after_sign_out_path_for(resource_or_scope)
        home_path
    end
end
