class CoursesController < ApplicationController

    def index
        @courses = Course.all 
    end

    def new
        @course=Course.new
    end

    def create
        @course = Course.new
        @course.course_name = params[:course][:course_name] 
        @course.description = params[:course][:description] 
        @course.cost = params[:course][:cost] 

        @course.save
        redirect_to courses_path
        

    end


end
