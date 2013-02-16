class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.boolean :is_draft
      t.timestamp :created_at
      t.timestamp :updated_at
      t.timestamps :published_at
      t.integer :users_id
      t.integer :categories_id

      t.timestamps
    end
  end
end
