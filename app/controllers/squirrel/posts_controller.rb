require_dependency "squirrel/application_controller"

module Squirrel
  class PostsController < ApplicationController
    def index
      @posts = Post.all
    end
    def new 
      @post = Post.new
    end
    def create
      @post = Post.new
      @post.attributes = post_params
      @post.save
      redirect_to posts_path 
    end
    def show
    end
    private
    def post_params
      params.require(:post).permit(:id,:title,:content,:author_id)
    end
  end
end
