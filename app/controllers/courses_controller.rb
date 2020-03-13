class CoursesController < ApplicationController

    #index for showing all courses
    def index
        @courses = Course.all 
    end

    #new course
    def new
        @course=Course.new
    end

    #create the course
    def create
        @course = Course.new
        @course.course_name = params[:course][:course_name] 
        @course.description = params[:course][:description] 
        @course.cost = params[:course][:cost] 
        @course.save
        redirect_to courses_path
    end


end
