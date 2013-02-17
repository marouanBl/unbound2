class Page < ActiveRecord::Base
  attr_accessible :issues_id, :issues_journals_id, :number, :pos1, :pos10, :pos11, :pos12, :pos13, :pos14, :pos15, :pos16, :pos2, :pos3, :pos4, :pos5, :pos6, :pos7, :pos8, :pos9, :templates_id
belongs_to :issue 
  belongs_to :template 
  has_many :pages_has_articles, dependent: :destroy 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :issue_id , :issue_id , :template_id ] } 
  validates :number, :presence => true, :uniqueness => true
end
