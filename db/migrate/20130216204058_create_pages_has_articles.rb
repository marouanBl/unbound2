class CreatePagesHasArticles < ActiveRecord::Migration
  def change
    create_table :pages_has_articles do |t|
      t.integer :pages_id
      t.integer :pages_issues_id
      t.integer :pages_issues_journals_id
      t.integer :pages_templates_id
      t.integer :articles_id

      t.timestamps
    end
  end
end
