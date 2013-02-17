class Article < ActiveRecord::Base
  attr_accessible :categories_id, :content, :created_at, :is_draft, :published_at, :title, :updated_at, :users_id
has_many :credibilities, dependent: :destroy 
  belongs_to :user 
  belongs_to :category 
  has_many :pages_has_articles, dependent: :destroy 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :user_id , :category_id ] } 
  validates :title, :presence => true
end
