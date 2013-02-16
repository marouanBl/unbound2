class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.timestamp :created_at
      t.integer :parent_category

      t.timestamps
    end
  end
end
