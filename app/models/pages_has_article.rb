class PagesHasArticle < ActiveRecord::Base
  attr_accessible :articles_id, :pages_id, :pages_issues_id, :pages_issues_journals_id, :pages_templates_id
end
