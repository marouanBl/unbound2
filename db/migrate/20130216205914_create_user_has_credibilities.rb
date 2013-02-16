class CreateUserHasCredibilities < ActiveRecord::Migration
  def change
    create_table :user_has_credibilities do |t|
      t.integer :users_id
      t.integer :credibility_id
      t.integer :credibility_articles_id

      t.timestamps
    end
  end
end
