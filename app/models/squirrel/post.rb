module Squirrel
  class Post < ActiveRecord::Base
    belongs_to :author, class_name: User, foreign_key: :author_id  
    belongs_to :section, class_name: Squirrel::Section, foreign_key: :section_id 
    has_many :comments, dependent: :destroy
  end
end
