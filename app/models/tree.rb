class Tree < ActiveRecord::Base
  scope :sorted, -> {(order(points: :desc))}

  has_many :branches
  validates :title, :presence => true
end
