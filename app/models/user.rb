class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  accepts_nested_attributes_for :posts, reject_if: :all_blank
  
  

  validates_uniqueness_of :name
  validates_presence_of :name
end
