class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :last_name
      t.string :name
      t.integer :states_id
      t.integer :states_countries_id
      t.integer :states_continents_id

      t.timestamps
    end
  end
end
