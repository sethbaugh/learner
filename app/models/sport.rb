class Sport < ActiveRecord::Base
  attr_accessible :name
  
  has_many :confrences
  has_many :teams, through: :confrences
end
