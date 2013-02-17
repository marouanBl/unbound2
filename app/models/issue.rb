class Issue < ActiveRecord::Base
  attr_accessible :created_at, :journals_id, :number, :published_at, :updated_at
  belongs_to :journal 
  has_many :pages, dependent: :destroy 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :journal_id ] } 
  validates :number, :presence => true
end
