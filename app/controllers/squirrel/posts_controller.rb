require_dependency "squirrel/application_controller"

module Squirrel
  class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def index
      @posts = Post.all
    end
    def new 
      @post = Post.new
      @sections_with_ids = Section.all.map{|section| [section.name, section.id]}
    end
    def create
      @post = Post.new
      @post.attributes = post_params
      @post.author_id = current_user.id
      if @post.save
        redirect_to posts_path
      else
        redirect_to :back
      end
    end
    def show
      @post = Post.find(params.permit(:id)[:id])
      @comment = Comment.new
    end
    private
    def post_params
      params.require(:post).permit(:id,:title,:content,:section_id)
    end
  end
end
