class AddSectionIdToSquirrelPosts < ActiveRecord::Migration
  def change
    add_column :squirrel_posts, :section_id, :integer
  end
end
