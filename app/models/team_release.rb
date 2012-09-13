class TeamRelease < ActiveRecord::Base
  belongs_to :team
  attr_accessible :date
  
  has_many :articles
end
