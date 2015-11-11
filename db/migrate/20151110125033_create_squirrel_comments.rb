class CreateSquirrelComments < ActiveRecord::Migration
  def change
    create_table :squirrel_comments do |t|
      t.text :content
      t.integer :commenter_id
      t.integer :replier_id
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
