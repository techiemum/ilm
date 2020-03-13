class StudentController < ApplicationController
    
    #method for students to signup as a user
    def signup
        @student = Student.new
        @student.address = Address.new
    end

    #create new student
    def create
    student = Student.new
    student.name = "#{params[:first_name] } #{params[:last_name]}"
    student.address = params[:student][:address] 
    student.save!

        if student.save
            redirect_to root_path
        else
        end
    end


    def submit

    end

end
