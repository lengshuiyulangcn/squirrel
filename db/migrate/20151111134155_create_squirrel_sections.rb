class CreateSquirrelSections < ActiveRecord::Migration
  def change
    create_table :squirrel_sections do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
