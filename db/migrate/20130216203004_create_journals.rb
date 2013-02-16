class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :name
      t.text :description
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :users_id
      t.integer :categories_id

      t.timestamps
    end
  end
end
