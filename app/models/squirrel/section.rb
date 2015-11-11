module Squirrel
  class Section < ActiveRecord::Base
    has_many :posts, dependent: :destroy
  end
end
