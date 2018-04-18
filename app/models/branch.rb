class Branch < ActiveRecord::Base
  belongs_to :tree

  validates :body, :presence => true
end
