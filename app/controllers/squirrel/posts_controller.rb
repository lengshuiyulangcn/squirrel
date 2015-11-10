require_dependency "squirrel/application_controller"

module Squirrel
  class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def index
      @posts = Post.all
    end
    def new 
      @post = Post.new
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
    end
    private
    def post_params
      params.require(:post).permit(:id,:title,:content)
    end
  end
end
