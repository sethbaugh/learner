class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :tags_attributes, :awesomeness, :date, :photo
 
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  validates :awesomeness, :presence => true
  validates :date, :presence => true
 
  has_many :comments, :dependent => :destroy
  has_many :tags
 
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
    
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
end