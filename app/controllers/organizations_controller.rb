class OrganizationsController < ApplicationController
    #index
    def index
        @organizations = Organization.all 
    end

    #create new organization

    def new
        @organization = Organization.new
    end

    #create organization
    
    def create
        @organization = Organization.new
        @organization.name = params[:organization][:name] 
        @organization.contact_no = params[:organization][:contact_no] 
        @organization.email = params[:organization][:email] 
        @organization.save
        redirect_to organizations_path
    end

end
