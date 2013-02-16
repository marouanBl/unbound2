class User < ActiveRecord::Base
  attr_accessible :last_name, :name, :states_continents_id, :states_countries_id, :states_id, :username
end
