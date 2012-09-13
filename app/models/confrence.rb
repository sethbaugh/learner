class Confrence < ActiveRecord::Base
  belongs_to :sport
  attr_accessible :name
end
