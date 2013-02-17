class Journal < ActiveRecord::Base
  attr_accessible :categories_id, :created_at, :description, :name, :updated_at, :users_id
belongs_to :user 
  belongs_to :category 
  has_many :issues, dependent: :destroy 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :user_id , :category_id ] } 
  validates :name, :presence => true
end
