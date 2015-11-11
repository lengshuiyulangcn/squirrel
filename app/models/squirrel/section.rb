module Squirrel
  class Section < ActiveRecord::Base
    has_many posts
  end
end
