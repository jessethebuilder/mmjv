class Product < ActiveRecord::Base
  PRODUCT_TYPES = %w|flower|
  def self.types
    PRODUCT_TYPES
  end

  validates :name, presence: true, uniqueness: true

  validates :product_type, presence: true, inclusion: { in: types }

  validates :price, presence: true, numericality: true



end
