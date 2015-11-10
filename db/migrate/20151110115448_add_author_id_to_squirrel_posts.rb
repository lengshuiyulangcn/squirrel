class AddAuthorIdToSquirrelPosts < ActiveRecord::Migration
  def change
    add_column :squirrel_posts, :author_id, :integer
  end
end
