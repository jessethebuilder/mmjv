require 'rails_helper'

RSpec.describe Product, :type => :model do
  describe 'Validations' do
    it{ should validate_presence_of :name }

    it{ should validate_presence_of :product_type_id }

    it{ should validate_presence_of :donation }
    it{ should validate_numericality_of :donation }

    it{ should validate_presence_of :donation_owed }
    it{ should validate_numericality_of :donation_owed }
    it{ should have_db_column(:donation_owed).with_options(default: 0.0) }

    it{ should validate_presence_of :quantity }
    it{ should validate_numericality_of :quantity }
    it{ should have_db_column(:quantity).with_options(default: 0.0) }

    it{ should validate_presence_of :supplier_id }

  end

  describe 'Associations' do
    it{ should belong_to :supplier }
    it{ should belong_to :product_type }
  end

  describe 'Class Methods' do

    describe '#group_by_supplier' do
      it 'should return a hash' do


      end
    end
  end
end
