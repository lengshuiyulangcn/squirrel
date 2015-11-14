require_dependency "squirrel/application_controller"

module Squirrel
  class SectionsController < ApplicationController
    def show
      @section = Section.find(params.permit(:id)[:id])
      @posts = @section.posts.page(params[:page]).order('created_at DESC')
      @sections = Section.all
      @new_section = Section.new
    end
    def create
      if current_user && current_user.is_admin
        section = Section.new(section_params)
        if section.save
          redirect_to :back
        end
      end
    end
    private
    
    def section_params
      params.require(:section).permit(:name)
    end
  end
end
