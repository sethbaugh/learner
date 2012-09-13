class Team < ActiveRecord::Base
  belongs_to :confrence
  attr_accessible :name
end
