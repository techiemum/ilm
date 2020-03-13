class StudentController < ApplicationController
    def signup
        @student = Student.new
        @student.address = Address.new
    end

    def create
        student = Student.new
        student.name = "#{params[:first_name] } #{params[:last_name]}"
        # student.first_name = params[:student][:first_name] 
        # student.last_name = params[:student][:last_name] 
        student.address = params[:student][:address] 

        # student.save

        # signup = student.signup.create(details: params[:student][:details])
        student.save!
        if student.save
            # redirect_to new_user_registration
            render plain: "Worked"
        else
            render plain: "Fail"
        end

    end

    def submit

    end

end
