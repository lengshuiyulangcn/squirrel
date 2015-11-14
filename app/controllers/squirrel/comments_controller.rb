require_dependency "squirrel/application_controller"

module Squirrel
  class CommentsController < Squirrel::ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def index
    end
    def show
    end
    def create
     comment = Comment.new(comment_params) 
     comment.commenter_id = current_user.id
     if comment.save
        flash[:notice] = "回复成功"
        redirect_to post_path(comment_params[:post_id])
     else
        flash[:notice] = "回复失败"
        redirect_to :back 
     end
    end 
    def edit
      @comment = Comment.find(params.permit(:id)[:id])
    end
    def update 
      comment = Comment.find(params.permit(:id)[:id])
      comment.attributes =comment_params
      if comment.save
        flash[:notice] = "修改回复成功"
        redirect_to post_path(comment_params[:post_id])
      else
        flash[:notice] = "修改回复失败"
        redirect_to :back 
      end
    end 
    def destroy
    end
    private
    def comment_params
      params.require(:comment).permit(:id,:post_id,:replier_id,:commenter_id,:content)
    end
  end
end
