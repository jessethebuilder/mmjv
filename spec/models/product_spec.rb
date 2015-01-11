require 'rails_helper'

RSpec.describe Product, :type => :model do
  describe 'Validations' do
    it{ should validate_presence_of :name }
    it{ should validate_uniqueness_of :name }

    it{ should validate_presence_of :product_type }
    it{ should validate_inclusion_of(:product_type).in_array(Product.types) }

    it{ should validate_presence_of :price }
    it{ should validate_numericality_of :price }
  end
end
