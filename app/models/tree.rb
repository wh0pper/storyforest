class Tree < ActiveRecord::Base
  has_many :branches
  validates :title, :presence => true
end
