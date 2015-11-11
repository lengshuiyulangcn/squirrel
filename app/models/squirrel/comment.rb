module Squirrel
  class Comment < ActiveRecord::Base
    belongs_to :post, class_name: Post, foreign_key: :post_id
    belongs_to :commenter, class_name: User, foreign_key: :commenter_id
    belongs_to :comment, class_name: Comment, foreign_key: :replier_id  
    has_many :replies, class_name: Comment, foreign_key: :replier_id  
  end
end
