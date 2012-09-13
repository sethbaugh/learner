class Confrence < ActiveRecord::Base
  belongs_to :sport
  attr_accessible :name
  
  has_many :teams
end
