class ApplicationController < ActionController::Base
   #optional paths whether user is signing as a student or instructor
    def after_sign_in_path_for(resource)
        if !(current_user.student || current_user.instructor)
            usertype_path
        else
            root_path
        end
    end
end
