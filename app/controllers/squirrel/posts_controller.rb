require_dependency "squirrel/application_controller"

module Squirrel
  class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def index
      @posts = Post.all
      @sections = Section.all
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
        flash[:notice]= "创建文章成功"
        redirect_to posts_path
      else
        flash[:notice]= "创建文章失败"
        redirect_to :back
      end
    end
    def edit
      @post = Post.find(params.permit(:id)[:id])
      @sections_with_ids = Section.all.map{|section| [section.name, section.id]}
    end
    def update
      @post = Post.find(params.permit(:id)[:id])
      @post.attributes = post_params
      if @post.author_id == current_user.id  && @post.save
        flash[:notice]= "修改文章成功"
        redirect_to posts_path
      else
        flash[:notice]= "修改失败"
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
