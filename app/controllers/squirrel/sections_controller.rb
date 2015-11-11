require_dependency "squirrel/application_controller"

module Squirrel
  class SectionsController < ApplicationController
    def show
      @section = Section.find(params.permit(:id)[:id])
      @posts = @section.posts
    end
  end
end