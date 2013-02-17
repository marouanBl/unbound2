class UserHasCredibility < ActiveRecord::Base
  attr_accessible :credibility_articles_id, :credibility_id, :users_id
belongs_to :user
end
