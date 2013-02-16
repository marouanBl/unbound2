class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.integer :countries_id
      t.integer :continents_id

      t.timestamps
    end
  end
end
