class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :number
      t.timestamp :created_at
      t.timestamp :updated_at
      t.timestamp :published_at
      t.integer :journals_id

      t.timestamps
    end
  end
end
