class Issue < ActiveRecord::Base
  attr_accessible :created_at, :journals_id, :number, :published_at, :updated_at
end
