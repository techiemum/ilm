Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #Welcome page
  root to: "home#index"
  
  #signup page for student
  get "/student/signup", to: "student#signup", as: "student_signup"
  post "/student/signup", to: "student#create", as: "create_student_signup"

  get "/usertype", to: "home#usertype", as: "usertype"
 
  #page for instructor
  get "/index/instructors", to: "instructors#index", as:"instructors"
  
  #ask to become new instructor
  get "/index/instructor/new", to: "instructors#new", as: "new_instructor"

  #show instructors
  get "/index/instructor/:id", to: "instructors#show", as:"instructor"

  #sign up as a instructor
  post "/index/instructors", to: "instructors#create"

  #courses page
  get "/index/courses", to: "courses#index", as:"courses"

  #Create new course
  get "index/courses/new", to: "courses#new", as: "new_course"
  post "index/courses", to: "courses#create"
  
  #organizations page
  get "index/organizations", to: "organizations#index", as: "organizations"

  #Create new organization
  get "index/organizations/new", to: "organizations#new", as: "new_organization"
  post "index/organizations", to: "organizations#create"
  
  #contactus page
  get "/index/contactus", to: "contactus#index", as:"contactus"

  # #redirecting back to home
  # post "index/contactus", to: "home#index", as:"home"
end
