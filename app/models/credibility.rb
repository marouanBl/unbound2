class Credibility < ActiveRecord::Base
  attr_accessible :articles_id, :confirm, :created_at
  belongs_to :users_id 

  validates :users_id, :presence => true
  belongs_to :article 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :article_id ] }
end
