class Toddler < ActiveRecord::Base

  belongs_to :group

  validates :name, :presence => true
  validates :parent, :presence => true

end
