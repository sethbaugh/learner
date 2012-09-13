class Team < ActiveRecord::Base
  belongs_to :confrence
  
  attr_accessible :name
  
  has_many :team_releases
end
