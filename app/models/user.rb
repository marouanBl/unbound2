class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :last_name, :name, :states_continents_id, :states_countries_id, :states_id, :username
has_many :journals, dependent: :destroy 
  belongs_to :state 
  has_many :templates, dependent: :destroy 
  has_many :articles, dependent: :destroy 
  has_many :users_has_credibilities, dependent: :destroy 
  has_many :credibilities_users 
  has_many :credibilities, through: :credibilities_users 
  has_and_belongs_to_many :credibilities 

  validates :username, :uniqueness => true
end
