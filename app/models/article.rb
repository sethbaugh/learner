class Article < ActiveRecord::Base
  belongs_to :team_release
  attr_accessible :date
end
