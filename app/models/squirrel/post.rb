module Squirrel
  class Post < ActiveRecord::Base
    belongs_to :author, class_name: User, foreign_key: :author_id  
    belongs_to :section   
    has_many :comments
  end
end
