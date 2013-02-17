class PagesHasArticle < ActiveRecord::Base
  attr_accessible :articles_id, :pages_id, :pages_issues_id, :pages_issues_journals_id, :pages_templates_id
belongs_to :page 
  belongs_to :article 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :page_id , :page_id , :page_id , :articles_id ] } 
end
