class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :number
      t.integer :pos1
      t.integer :pos2
      t.integer :pos3
      t.integer :pos4
      t.integer :pos5
      t.integer :pos6
      t.integer :pos7
      t.integer :pos8
      t.integer :pos9
      t.integer :pos10
      t.integer :pos11
      t.integer :pos12
      t.integer :pos13
      t.integer :pos14
      t.integer :pos15
      t.integer :pos16
      t.integer :issues_id
      t.integer :issues_journals_id
      t.integer :templates_id

      t.timestamps
    end
  end
end
