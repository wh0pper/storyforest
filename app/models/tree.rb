class Tree < ActiveRecord::Base
  validates :title, :presence => true
end
