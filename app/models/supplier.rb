class Supplier < ActiveRecord::Base
  belongs_to :user
  has_many :products

  validates :name, presence: true


end
