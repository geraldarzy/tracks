class ApplicationController < ActionController::Base
    def home
    end
    
    def after_sign_out_path_for(resource_or_scope)
        home_path
    end
end
