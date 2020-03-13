class InstructorsController < ApplicationController
   
    #index page for all instructors
    def index
    @instructors = Instructor.all
    end
    
    #show instructors id wise
    def show

        @instructor = Instructor.find(params[:id])
       
    end
    
    def new
        @instructor = Instructor.new 
    end

    def create
        instructor = Instructor.new
        instructor.name= params[:instructor][:name]
        instructor.bio= params[:instructor][:bio]
        instructor.picture.attach(params[:instructor][:picture])
        instructor.save
        current_user.instructor_id = instructor.id
        current_user.save
        redirect_to instructors_path

    end
    
    def picture
        
    end


   
end
