class Article < ActiveRecord::Base
  belongs_to :TeamRelease
  attr_accessible :date
end
