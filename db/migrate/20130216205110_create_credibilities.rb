class CreateCredibilities < ActiveRecord::Migration
  def change
    create_table :credibilities do |t|
      t.boolean :confirm
      t.timestamp :created_at
      t.integer :articles_id

      t.timestamps
    end
  end
end
