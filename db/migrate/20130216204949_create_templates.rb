class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.text :content
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :users_id

      t.timestamps
    end
  end
end
