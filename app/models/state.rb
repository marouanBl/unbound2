class State < ActiveRecord::Base
  attr_accessible :continents_id, :countries_id, :name
  has_many :users, dependent: :destroy 
  belongs_to :country 
  belongs_to :continent 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :country_id , :continent_id ] } 
  validates :name, :presence => true, :uniqueness => true
end
